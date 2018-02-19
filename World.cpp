#include "World.h"
#include <memory>
World::World()
{
    Prey = std::unique_ptr<EntityAI>(new EntityAI());
    Prey->Pos = Vector(2,0);
    scene.CameraList.push_back(Prey->vision);
	scene.ObjectList.push_back(Prey->object);
	Prey->vision->Angle = 3.14;
	//Prey->MaxAcceleration = 0.07;
	Pred = std::unique_ptr<EntityAI>(new EntityAI());
	Pred->Pos = Vector(-2, 0);
	scene.CameraList.push_back(Pred->vision);
	scene.ObjectList.push_back(Pred->object);
	WorldSize = 8;
    float sizefactor = WorldSize;
    int wall = 0;
    Walls[wall] = std::unique_ptr<RenderObjectLine>(new RenderObjectLine(Vector(-1,-1)*sizefactor,Vector(0,2)*sizefactor));
    Walls[wall]->Colour = 2;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::unique_ptr<RenderObjectLine>(new RenderObjectLine(Vector(-1,1)*sizefactor,Vector(2,0)*sizefactor));
    Walls[wall]->Colour = 3;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::unique_ptr<RenderObjectLine>(new RenderObjectLine(Vector(1,1)*sizefactor,Vector(0,-2)*sizefactor));
    Walls[wall]->Colour = 2;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::unique_ptr<RenderObjectLine>(new RenderObjectLine(Vector(1,-1)*sizefactor,Vector(-2,0)*sizefactor));
    Walls[wall]->Colour = 4;
    scene.ObjectList.push_back(Walls[wall++].get());
}
int World::PlayGame(int timelimit){
    int t = 0;
    for(;t < timelimit;++t)
    {
        Update();
        if(CheckPredWin()){
            break;
        }
    }
    return t;
}

bool World::CheckPredWin(){
    Vector Difference = Pred->Pos - Prey->Pos;
    if(sqrt(Difference.Dot(Difference)) < WinDistance)
    {
        return true;
    }
    return false;
}

void World::Update(){
    Prey->Update(*this);
    Pred->Update(*this);
	scene.Render();
}
