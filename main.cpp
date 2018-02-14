#include "World.h"
#include "RenderScene.h"
#include "RenderObjectCircle.h"
#include "RenderCamera.h"
#include <iostream>
#include <fstream>
#include <chrono>
int MaxPlayTime = 100;
std::vector<Entity> CreateGeneration(Entity & ent)
{
    std::vector<Entity> Generation;
    int generationcount = 20;
    for(int i = 0; i < generationcount;++i)
    {
        Generation.emplace_back(Entity(ent));
        Generation.back().Randomise(1);
    }
    return Generation;
}
void Training(){
    Entity BestEnt = Entity();
    BestEnt.Randomise(1);
    //Generation
    for(int i = 0;i < 10;++i)
    {
        auto Generation = CreateGeneration(BestEnt);
        std::cout<<"Generation number:"<<i<<std::endl;
        for(auto entity : Generation)
        {
            World playenv = World();
            int runtime = 0;
            runtime = playenv.PlayGame(MaxPlayTime);
            std::cout<<"Ran for:"<<runtime<<std::endl;
            if(runtime < MaxPlayTime)
            {

            }
        }
    }
}
void OutputData(RenderCamera * camera, std::ofstream & out)
{
	for(auto ray : camera->VisionData)
	{
		out<< ray.Distance <<" " << ray.Colour << std::endl;
    }
}
void RaytraceTesting()
{
    std::ofstream outfile("renderdata.txt");
    RenderScene scene = RenderScene();
    RenderCamera * camera = new RenderCamera(1000);
    
    RenderObject * bigcircle = new RenderObjectCircle(1);
    bigcircle->Pos.X = 6;
    scene.ObjectList.push_back(bigcircle);
    
    RenderObject * circle = new RenderObjectCircle(0.2);
    circle->Pos.X = 5;
    circle->Pos.Y = -1;
    scene.ObjectList.push_back(circle);
    
    //RenderObject * circle = new RenderObjectCircle(1);
    //circle->Pos.X = 6;
    //scene.ObjectList.push_back(circle);
    
    scene.CameraList.push_back(camera);
    scene.Render();
	OutputData(camera,outfile);
    outfile.close();
    delete circle;
    delete camera;
}
int main(int argc,char **args){
    RaytraceTesting();
}
