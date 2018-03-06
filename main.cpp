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
#include "bitmap_image.hpp"
#include <ctime>
#include <stdio.h>
#include <random>
#include "NeuralBrain.h"
#include "NeuralBit.h"

//#include <dirent.h>
using BrainType = NeuralBrain<83, 100>;//NeuralBrain<83,100>;
int MaxPlayTime = 300;
int RandomPlays = 10;
int GenerationCount =  10000;
int GenerationSize = 40;
float width = 20;
std::random_device rd;  
std::mt19937 gen(rd());

class PlayData{
public:
    std::unique_ptr<BrainType> brain;
    int wins = 0;
    int games = 0;
    PlayData(std::unique_ptr<BrainType> newbrain){
		brain = std::move(newbrain);
		wins = 0;
		games = 0;
	};
	PlayData(PlayData const& play)
	{
		brain = std::make_unique<BrainType>(*play.brain);
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
		brain = std::make_unique<BrainType>(*original.brain);
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
	Generation.emplace_back(PlayData(std::make_unique<BrainType>(net)));
	for (int i = 0; i < GenerationSize - 1; ++i)
	{
		auto brain = std::make_unique<BrainType>(net);
		brain->Randomise(0.5 );
		Generation.emplace_back(PlayData(std::move(brain)));
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
		auto brain = std::make_unique<BrainType>(*it->brain);
		brain->Randomise(1);
		*(it + midpoint) = PlayData(std::move(brain));
	}
	return PreviousGen;
}
void PlayTest(int gen,BrainType * pred,BrainType * pray);
void Training(){
	using namespace std::chrono;
	std::uniform_real_distribution<> Position((float)-width, (float)width);
	std::uniform_real_distribution<> Rotation((float)0, (float)2 * 3.14);
    std::cout<<"Start training"<<std::endl;
	PlayData BestEntPrey = PlayData(std::make_unique<BrainType>());
    BestEntPrey.brain->Randomise(3);
	PlayData BestEntPred = PlayData(std::make_unique<BrainType>());
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
    for(int i = 0;i < GenerationCount;++i)
    {
        //Create new generation
		auto start = std::chrono::high_resolution_clock::now();

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
		#pragma omp parallel for
		for (int prey = 0; prey < GenerationPrey.size(); ++prey)
		{
			PlayData& playprey = GenerationPrey[prey];
			for (int pred = 0;pred < GenerationPred.size();++pred)
            //for(PlayData& playpred : GenerationPred)
            {
				PlayData& playpred = GenerationPred[pred];
				for (int runs = 0; runs < RandomPlays; ++runs)
				{
					World playenv = World();
					int runtime = 0;
					//Copy brains in
					for (int i = 1; i < playenv.EntityList.size(); ++i)
					{
						playenv.EntityList[i]->brain = std::make_unique<BrainType>(*playpred.brain.get());
					}
					playenv.EntityList.front()->brain = std::make_unique<BrainType>(*playprey.brain.get());
					for (std::unique_ptr<EntityAI> & entity : playenv.EntityList)
					{
						entity->Pos.X = Position(gen);
						entity->Pos.Y = Position(gen);
						entity->Rot = Rotation(gen);
					}
					runtime = playenv.PlayGame(MaxPlayTime);

					if (runtime < MaxPlayTime)
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
        }
		std::cout << "New generation" << std::endl;
		GenerationPred = CreateGeneration(GenerationPred);
		GenerationPrey = CreateGeneration(GenerationPrey);
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
		if (true)//(i % 4 == 0)
		{
			std::cout << "Saved" << std::endl;
			{
				PlayData out = GenerationPrey.front();
				BestEntPrey.brain = std::make_unique<BrainType>(*out.brain);
				BestEntPrey.games = out.games;
				BestEntPrey.wins = out.wins;
			}
			{
				PlayData out = GenerationPred.front();
				BestEntPred.brain = std::make_unique<BrainType>(*out.brain);
				BestEntPred.games = out.games;
				BestEntPred.wins = out.wins;
			}
			//std::cout << "Best Prey:" << BestEntPrey.wins << std::endl;
			//std::cout << "Best Pred:" << BestEntPred.wins << std::endl;
			

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
			PlayTest(i, BestEntPred.brain.get(), BestEntPrey.brain.get());
		}
		auto end = std::chrono::high_resolution_clock::now();
		auto time_span = duration_cast<milliseconds>(end - start);
		std::cout << "Timing Generation:" << time_span.count() << "\n";
		
    }
	PlayTest(-1, BestEntPred.brain.get(), BestEntPrey.brain.get());
}
void OutputDataRender(RenderCamera * camera, std::ofstream & out)
{
	for (auto ray : camera->VisionData)
	{
		out << ray.Distance << " " << ray.Colour << std::endl;
	}
}
void OutputDataPosition(EntityAI * entity, std::ofstream & out)
{
	out << entity->Pos.X << " " << entity->Pos.Y << " " << entity->Rot << " " << entity->object->Colour << std::endl;
}

Colour RayToRGB(RenderRay & ray)
{
	static const Colour ColourMapping[5] = {Colour(1,1,1),Colour(0,0,0),Colour(1,0,0),Colour(0,1,0),Colour(0,0,1) };
	auto rawcolour = ColourMapping[ray.Colour];
	auto maxcolour = ColourMapping[0];
	float blendfactor = ray.Distance/ray.MaxDistance;
	return Colour(((rawcolour.R*(1-blendfactor)) + (maxcolour.R*blendfactor)),
	((rawcolour.G*(1-blendfactor)) + (maxcolour.G*blendfactor)),
	((rawcolour.B*(1-blendfactor)) + (maxcolour.B*blendfactor)));
}
void OutputDataRenderBitmap(RenderCamera * camera, std::string output)
{
	static const int DeltaX = 5;
	static const int Height = 50;
	int Width = camera->SampleCount*DeltaX;
   	cartesian_canvas canvas(Width,Height);
	canvas.pen_color(255, 255, 255);
	canvas.fill_rectangle(0, 0, camera->SampleCount*DeltaX,Height);
	int XPos = -Width/2;
	for (auto & ray : camera->VisionData)
	{
		auto Colour = RayToRGB(ray);
		canvas.pen_width(1);
		int drawheight = int(0.5*Height * (ray.MaxDistance-ray.Distance)/ray.MaxDistance);
		canvas.pen_color((int)(Colour.R*255), (int)(Colour.G*255),(int)(Colour.B*255));
		canvas.fill_rectangle(XPos, int(-drawheight/2.0),XPos + DeltaX, int(drawheight/2.0));
		XPos += DeltaX;
	}
   	canvas.image().save_image(output);
}



void RaytraceTesting()
{
    RenderScene scene = RenderScene();
    RenderCamera * camera = new RenderCamera(200);
    
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
		scene.Render();
		OutputDataRenderBitmap(camera,"./RenderImage/data"+std::to_string(i)+".bmp ");
		camera->Angle += 3.14*(10.0/180.0);
	}
    delete circle;
    delete redcircle;
    delete bigcircle;
    delete camera;
}
void PlayTest(int generation,BrainType * pred,BrainType * pray)
{
	std::uniform_real_distribution<> Position((float)-width, (float)width);
	std::uniform_real_distribution<> Rotation((float)0, (float)2 * 3.14);
    std::cout<<"PlayTest"<<std::endl;
	World playenv = World();
    std::cout<<"swap pred"<<std::endl;
	for (int i = 1; i < playenv.EntityList.size(); ++i)
	{
		playenv.EntityList[i]->brain = std::make_unique<BrainType>(*pred);
	}
	playenv.EntityList.front()->brain = std::make_unique<BrainType>(*pray);
	for (std::unique_ptr<EntityAI> & entity : playenv.EntityList)
	{
		entity->Pos.X = Position(gen);
		entity->Pos.Y = Position(gen);
		entity->Rot = Rotation(gen);
	}
    std::cout<<"start play"<<std::endl;
	std::ofstream outfile("./Games/Gen"+ std::to_string(generation) + ".txt");
	for(int t = 0;t < MaxPlayTime;++t)
	{
        //std::cout<<"Update"<<std::endl;
		outfile << "Frame " << t << std::endl;
    	//std::cout<<"update play"<<std::endl;
		playenv.Update();
		for (auto & entity : playenv.EntityList)
		{
			OutputDataPosition(entity.get(),outfile);
		}
		OutputDataRenderBitmap(playenv.EntityList[1]->vision.get(),"./RenderImage/data"+std::to_string(t)+".bmp");
		//std::ofstream renderfile("./Render/data"+std::to_string(t)+".txt");
		//renderfile << 0 << std::endl;
    	//OutputDataRender(playenv.EntityList[1]->vision.get(),renderfile);
		//renderfile.close();
		//std::cout << "check win" << std::endl;
		if (playenv.CheckPredWin())
		{
			break;
		}
	}
	outfile.close();
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
		OutputDataRender(playenv.Pred->vision,outfile);
		outfile.close();
		if (playenv.CheckPredWin())
		{
			break;
		}
	}
}*/
template
<int Input,int Nodes>
void NeuralBrainTest()
{	
	using namespace std::chrono;
	auto brain = NeuralBrain<Input, Nodes>();
	std::vector<float> Inputs(Input);
	Inputs.resize(Input,0);
	int Runtime = 10000;
	auto start = std::chrono::high_resolution_clock::now();
	for (int i = 0; i < Runtime; ++i)
	{
		brain.Update(Inputs);
	}
	auto end = std::chrono::high_resolution_clock::now();
	auto time_span = duration_cast<nanoseconds>(end - start);
	//std::cout << "Stats:" << Input << "-" << Nodes << std::endl;
	//std::cout << "Timing full:" << time_span.count() << std::endl;
	//std::cout << "Timing single:" << time_span.count() / (float)Runtime << std::endl;
	//std::cout << "FPS est:" << 1.0/(time_span.count() / ((float)Runtime*1000000000)) << std::endl;
	std::cout << Input << "-" << Nodes << " : " << time_span.count() / (float)Runtime << std::endl;
}
int main(int argc,char **args){
    //RandomPlayTest();
	//RaytraceTesting();
	Training();
	return 0;
}
