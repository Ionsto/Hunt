#include "World.h"
#include "RenderScene.h"
#include "RenderObjectCircle.h"
#include "RenderCamera.h"
#include "EntityAI.h"
#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>
#include <chrono>
#include <cstdlib>
#include <ctime>
#include <stdio.h>
//#include <dirent.h>

int MaxPlayTime = 100;
class PlayData{
public:
    std::unique_ptr<NeuralNet> brain;
    int wins = 0;
    int games = 0;
    PlayData(NeuralNet * newbrain){
		brain = std::unique_ptr<NeuralNet>(newbrain);
	};
    PlayData(PlayData const& play)
	{
		brain = std::unique_ptr<NeuralNet>(new NeuralNet(*play.brain));
		wins = play.wins;
		games = play.games;
    };
};
struct {
    bool operator()(const PlayData & a,const PlayData & b) const
    {   
        return a.wins < b.wins;
    }   
} PlayDataSorter;
std::vector<PlayData> CreateGeneration(NeuralNet net)
{
    std::vector<PlayData> Generation;
    int generationcount = 20;
    Generation.emplace_back(PlayData(new NeuralNet(net)));
    for(int i = 0; i < generationcount-1;++i)
    {
        auto brain = new NeuralNet(net);
        brain->Randomise(1);
        Generation.emplace_back(PlayData(brain));
    }
    return Generation;
}
void PlayTest(int gen,NeuralNet pred,NeuralNet pray);
void Training(){
    std::cout<<"Start training"<<std::endl;
    int vision = 50;
    int incount = 10*vision + 4;
    PlayData BestEntPrey = PlayData(new NeuralNet(incount));
    BestEntPrey.brain->Randomise(3);
    PlayData BestEntPred = PlayData(new NeuralNet(incount));
    BestEntPred.brain->Randomise(3);
	{
		std::ifstream bestprey("preyweights.txt");
		std::ifstream bestpred("predweights.txt");
		if (bestprey)
		{
			bestprey >> *BestEntPrey.brain;
			bestprey.close();
		}
		if (bestpred)
		{
			bestpred >> *BestEntPrey.brain;
			bestpred.close();
		}
	}
    //Generations
    std::cout<<"Genned seeds"<<std::endl;
    for(int i = 0;i < 100;++i)
    {
        //Create new generation
        auto GenerationPrey = CreateGeneration(*BestEntPrey.brain);
        auto GenerationPred = CreateGeneration(*BestEntPred.brain);
		
        std::cout<<"Generation number:"<<i<<std::endl;
        for(PlayData& playprey : GenerationPrey)
        {
			#pragma omp parallel for
			for (int pred = 0;pred < GenerationPred.size();++pred)
            //for(PlayData& playpred : GenerationPred)
            {
				PlayData& playpred = GenerationPred[pred];
                World playenv = World();
                int runtime = 0;
                //Copy brains in
                delete playenv.Pred->brain;
                playenv.Pred->brain = new NeuralNet(*playpred.brain);
                delete playenv.Prey->brain;
                playenv.Prey->brain = new NeuralNet(*playprey.brain);
				
                runtime = playenv.PlayGame(MaxPlayTime);
                
                if(runtime < MaxPlayTime)
                {
                    ++playpred.wins;
                }
                else
                {
                    ++playprey.wins;
                }
                ++playpred.games;
                ++playprey.games;
				
            }
        }
			
        //std::cout<<"swap best"<<std::endl;
		{
			PlayData out = GenerationPred.front();
			BestEntPrey.brain = std::unique_ptr<NeuralNet>(new NeuralNet(*out.brain));
			BestEntPrey.games = out.games;
			BestEntPrey.wins = out.wins;
		}
		{
			PlayData out = GenerationPrey.front();
			BestEntPred.brain = std::unique_ptr<NeuralNet>(new NeuralNet(*out.brain));
			BestEntPred.games = out.games;
			BestEntPred.wins = out.wins;
		}
		for (PlayData & pred : GenerationPred)
		{
			if (pred.wins > BestEntPred.wins)
			{
				BestEntPred.brain = std::unique_ptr<NeuralNet>(new NeuralNet(*pred.brain));
				BestEntPred.games = pred.games;
				BestEntPred.wins = pred.wins;
			}
		}
		for (PlayData & prey : GenerationPrey)
		{
			if (prey.wins > BestEntPrey.wins)
			{
				BestEntPrey.brain = std::unique_ptr<NeuralNet>(new NeuralNet(*prey.brain));
				BestEntPrey.games = prey.games;
				BestEntPrey.wins = prey.wins;
			}
		}
		std::cout << "Best Prey:" << BestEntPrey.wins << std::endl;
		std::cout << "Best Pred:" << BestEntPred.wins << std::endl;
    }
	{
		std::ofstream bestprey("preyweights.txt");
		std::ofstream bestpred("predweights.txt");
		if (bestprey)
		{
			bestprey << *BestEntPrey.brain;
			bestprey.close();
		}
		if (bestpred)
		{
			bestpred << *BestEntPrey.brain;
			bestpred.close();
		}
	}
    PlayTest(0,*BestEntPred.brain,*BestEntPrey.brain);
}
void OutputData(RenderCamera * camera, std::ofstream & out)
{
	for(auto&& ray : camera->VisionData)
	{
		out<< ray.Distance <<" " << ray.Colour << std::endl;
    }
}
void RaytraceTesting()
{
    RenderScene scene = RenderScene();
    RenderCamera * camera = new RenderCamera(1000);
    
    RenderObject * bigcircle = new RenderObjectCircle(1);
    bigcircle->Pos.X = 6;
    scene.ObjectList.push_back(bigcircle);
    
    RenderObject * circle = new RenderObjectCircle(0.2);
    circle->Pos.X = 5;
    circle->Pos.Y = -1;
    scene.ObjectList.push_back(circle);
	
	RenderObject * redcircle = new RenderObjectCircle(0.2);
	redcircle->Colour = 2;
    redcircle->Pos.X = -3;
    redcircle->Pos.Y = 0;
    scene.ObjectList.push_back(redcircle);
    
    //RenderObject * circle = new RenderObjectCircle(1);
    //circle->Pos.X = 6;
    //scene.ObjectList.push_back(circle);
    
    scene.CameraList.push_back(camera);
    for(int i = 0; i < 36;++i)
    {
		std::ofstream outfile("./Render/data"+std::to_string(i)+".txt");
		scene.Render();
		OutputData(camera,outfile);
		camera->Angle += 3.14*(10.0/180.0);
		outfile.close();
	}
    delete circle;
    delete redcircle;
    delete bigcircle;
    delete camera;
}
void PlayTest(int gen,NeuralNet pred,NeuralNet pray)
{
    std::cout<<"PlayTest"<<std::endl;
	World playenv = World();
    std::cout<<"swap pred"<<std::endl;
    delete playenv.Pred->brain;
    playenv.Pred->brain = new NeuralNet(pred);
    std::cout<<"swap prey"<<std::endl;
    delete playenv.Prey->brain;
    playenv.Prey->brain = new NeuralNet(pray);
    std::cout<<"start play"<<std::endl;
	for(int t = 0;t < MaxPlayTime;++t)
	{
        //std::cout<<"Update"<<std::endl;
        playenv.Update();
		//std::cout<<"open file"<<std::endl;
		std::ofstream outfile("./Render/data"+std::to_string(t)+".txt");
        //std::cout<<"write"<<std::endl;
		OutputData(playenv.Pred->vision,outfile);
		outfile.close();
        //std::cout<<"close"<<std::endl;
	}
}
void RandomPlayTest()
{
	std::srand(std::time(0));
	World playenv = World();
	playenv.Prey->Pos = Vector(5,0);
	playenv.Prey->object->Pos = Vector(5,0);
	playenv.Prey->Randomise(1);
	playenv.Pred->Randomise(1);
	int runtime = 0;
	for(int t = 0;t < 100;++t)
	{
        std::cout<<""<<playenv.Pred->object->Pos.X<<":"<<playenv.Pred->object->Pos.Y<<"\n";
        playenv.Update();
        //playenv.scene.Render();
        playenv.Pred->vision->Angle += 3.14*(4.0/180.0);
		std::ofstream outfile("./Render/data"+std::to_string(t)+".txt");
		OutputData(playenv.Pred->vision,outfile);
		outfile.close();
		if (playenv.CheckPredWin())
		{
			break;
		}
	}
}
int main(int argc,char **args){
    //RandomPlayTest();
    Training();
}
