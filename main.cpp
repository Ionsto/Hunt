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
#include "NeuralBrain.h"
#include "NeuralNetFF.h"
//#include <dirent.h>
using BrainType = NeuralBrain<83,15>;
int MaxPlayTime = 100;
class PlayData{
public:
    std::unique_ptr<BrainType> brain;
    int wins = 0;
    int games = 0;
    PlayData(BrainType * newbrain){
		brain = std::unique_ptr<BrainType>(newbrain);
		wins = 0;
		games = 0;
	};
	PlayData(PlayData const& play)
	{
		brain = std::unique_ptr<BrainType>(new BrainType(*play.brain));
		wins = play.wins;
		games = play.games;
	};
	PlayData(PlayData && play)
	{
		std::swap(brain, play.brain);
		std::swap(wins, play.wins);
		std::swap(games, play.games);
	};
	PlayData& operator=(const PlayData& original)
	{
		//brain = std::move(original.brain);
		brain = std::unique_ptr<BrainType>(new BrainType(*original.brain));
		wins = original.wins;
		games = original.games;
		return *this;
	};
	PlayData& operator=(PlayData& original)
	{
		//brain = std::move(original.brain);
		brain = std::move(original.brain);
		wins = original.wins;
		games = original.games;
		return *this;
	};
};
struct {
    bool operator()(const PlayData & a,const PlayData & b) const
    {   
        return a.wins < b.wins;
    }   
} PlayDataSorter;
std::vector<PlayData> CreateGeneration(BrainType net)
{
	std::vector<PlayData> Generation;
	int generationcount = 40;
	Generation.emplace_back(PlayData(new BrainType(net)));
	for (int i = 0; i < generationcount - 1; ++i)
	{
		auto brain = new BrainType(net);
		brain->Randomise(1);
		Generation.emplace_back(PlayData(brain));
	}
	return Generation;
}
std::vector<PlayData> CreateGeneration(std::vector<PlayData> PreviousGen)
{
	auto sorter = [](const PlayData& A, const PlayData& B) {return A.wins > B.wins; };
	int midpoint = ((int)(PreviousGen.size()) / 2);
	//std::sort(PreviousGen.begin(), PreviousGen.end(), sorter);
	std::partial_sort(PreviousGen.begin(), PreviousGen.begin() + midpoint, PreviousGen.end(), sorter);
	for (auto it = PreviousGen.begin();it != PreviousGen.begin() + midpoint;++it)
	{
		auto brain = new BrainType(*it->brain);
		brain->Randomise(1);
		*(it + midpoint) = PlayData(brain);
	}
	return PreviousGen;
}
void PlayTest(int gen,BrainType pred,BrainType pray);
void Training(){
    std::cout<<"Start training"<<std::endl;
    int vision = 50;
    int incount = 10*vision + 4;
	// PlayData BestEntPrey = PlayData(new BrainType(incount));
	PlayData BestEntPrey = PlayData(new BrainType());
    BestEntPrey.brain->Randomise(3);
	// PlayData BestEntPred = PlayData(new BrainType(incount));
   PlayData BestEntPred = PlayData(new BrainType());
    BestEntPred.brain->Randomise(3);
	{
		std::ifstream bestprey("preyweights.txt");
		std::ifstream bestpred("predweights.txt");
		if (bestprey)
		{
			std::cout << "Load prey" << std::endl;
			bestprey >> *BestEntPrey.brain;
			bestprey.close();
		}
		if (bestpred)
		{
			std::cout << "Load pred" << std::endl;
			bestpred >> *BestEntPred.brain;
			bestpred.close();
		}
		//PlayTest(0, *BestEntPred.brain, *BestEntPrey.brain);
	}
    auto GenerationPrey = CreateGeneration(*BestEntPrey.brain);
    auto GenerationPred = CreateGeneration(*BestEntPred.brain);
    //Generations
    std::cout<<"Genned seeds"<<std::endl;
    for(int i = 0;i < 1900;++i)
    {
        //Create new generation

		for (PlayData& playprey : GenerationPrey)
		{
			playprey.wins = 0;
			playprey.games = 0;
		}
		for (PlayData& playpred : GenerationPred)
		{
			playpred.wins = 0;
			playpred.games = 0;
		}
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
				for (int i = 1; i < playenv.EntityList.size(); ++i)
				{
					delete playenv.EntityList[i]->brain;
					playenv.EntityList[i]->brain = (NeuralNet*)new BrainType(*playpred.brain);
				}
                delete playenv.EntityList.front()->brain;
				playenv.EntityList.front()->brain = (NeuralNet*)new BrainType(*playprey.brain);
				
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
		std::cout << "New generation" << std::endl;
		GenerationPred = CreateGeneration(GenerationPred);
		GenerationPrey = CreateGeneration(GenerationPrey);
		{
			PlayData out = GenerationPrey.front();
			BestEntPrey.brain = std::unique_ptr<BrainType>(new BrainType(*out.brain));
			BestEntPrey.games = out.games;
			BestEntPrey.wins = out.wins;
		}
		{
			PlayData out = GenerationPred.front();
			BestEntPred.brain = std::unique_ptr<BrainType>(new BrainType(*out.brain));
			BestEntPred.games = out.games;
			BestEntPred.wins = out.wins;
		}
		//std::cout << "Best Prey:" << BestEntPrey.wins << std::endl;
		//std::cout << "Best Pred:" << BestEntPred.wins << std::endl;
		std::cout << "Stats Prey:";
		for (PlayData& playprey : GenerationPrey)
		{
			std::cout << playprey.wins << ",";
		}
		std::cout << std::endl;
		std::cout << "Stats Pred:";
		for (PlayData& playpred : GenerationPred)
		{
			std::cout << playpred.wins << ",";
		}
		std::cout << std::endl;

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
				bestpred << *BestEntPred.brain;
				bestpred.close();
			}
		}
		PlayTest(0, *BestEntPred.brain, *BestEntPrey.brain);
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
void PlayTest(int gen,BrainType pred,BrainType pray)
{
    std::cout<<"PlayTest"<<std::endl;
	World playenv = World();
    std::cout<<"swap pred"<<std::endl;
	for (int i = 1; i < playenv.EntityList.size(); ++i)
	{
		delete playenv.EntityList[i]->brain;
		playenv.EntityList[i]->brain = (NeuralNet*)new BrainType(pred);
	}
	delete playenv.EntityList.front()->brain;
	playenv.EntityList.front()->brain = (NeuralNet*)new BrainType(pray);

    std::cout<<"start play"<<std::endl;
	for(int t = 0;t < MaxPlayTime;++t)
	{
        //std::cout<<"Update"<<std::endl;
        playenv.Update();
		//std::cout<<"open file"<<std::endl;
		std::ofstream outfile("./Render/data"+std::to_string(t)+".txt");
        //std::cout<<"write"<<std::endl;
		OutputData(playenv.EntityList[1]->vision,outfile);
		outfile.close();
		if (playenv.CheckPredWin())
		{
			break;
		}
        //std::cout<<"close"<<std::endl;
	}
}
/*
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
}*/
void NeuralBrainTest()
{	
	using namespace std::chrono;
	auto brain = NeuralBrain<10, 5>();
	auto start = std::chrono::high_resolution_clock::now();
	const int Runtime = 10000;
	std::vector<float> Inputs(10);
	for (int i = 0; i < Runtime; ++i)
	{
		brain.Update(Inputs);
	}
	auto end = std::chrono::high_resolution_clock::now();
	auto time_span = duration_cast<milliseconds>(end - start);
	std::cout << "Timing full:" << time_span.count() << "\n";
	std::cout << "Timing single:" << time_span.count() / (float)Runtime << "\n";
}
int main(int argc,char **args){
    //RandomPlayTest();
	//NeuralBrainTest();
    Training();
}
