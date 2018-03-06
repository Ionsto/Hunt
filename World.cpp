#include "World.h"
#include "RenderObject.h"
#include <memory>
World::World()
{
	AddEntity(std::make_unique<EntityAI>(), Vector(2, 0));
	EntityList.back()->object->Colour = 3;
	EntityList.back()->vision->Angle *= 1.5;
	//Prey->vision->Angle = 3.14;
	EntityList.back()->MaxAcceleration *= 1.25;
	AddEntity(std::make_unique<EntityAI>(), Vector(-2, -1));
	EntityList.back()->object->Colour = 2;
	AddEntity(std::make_unique<EntityAI>(), Vector(-2, -1));
	EntityList.back()->object->Colour = 2;
	AddEntity(std::make_unique<EntityAI>(), Vector(-2, -1));
	EntityList.back()->object->Colour = 2;
	AddEntity(std::make_unique<EntityAI>(), Vector(-2, -1));
	EntityList.back()->object->Colour = 2;
	WorldSize = 20;
    float sizefactor = WorldSize;
    int wall = 0;
    Walls[wall] = std::make_unique<RenderObjectLine>(Vector(-1,-1)*sizefactor,Vector(0,2)*sizefactor);
    Walls[wall]->Colour = 4;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::make_unique<RenderObjectLine>(Vector(-1,1)*sizefactor,Vector(2,0)*sizefactor);
    Walls[wall]->Colour = 4;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::make_unique<RenderObjectLine>(Vector(1,1)*sizefactor,Vector(0,-2)*sizefactor);
    Walls[wall]->Colour = 4;
    scene.ObjectList.push_back(Walls[wall++].get());
    
    Walls[wall] = std::make_unique<RenderObjectLine>(Vector(1,-1)*sizefactor,Vector(-2,0)*sizefactor);
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
	for (int i = 1;i<this->EntityList.size();++i)
	{
		Vector Difference = EntityList[i]->Pos - EntityList[0]->Pos;
		if (sqrt(Difference.Dot(Difference)) < WinDistance)
		{
			return true;
		}
	}
    return false;
}

void World::Update(){
	for (auto & entity : this->EntityList)
	{
		entity->Update(*this);
	}
	scene.Render();
}

void World::AddEntity(std::unique_ptr<EntityAI> ent, Vector pos)
{
	ent->Pos = pos;
	scene.CameraList.push_back(ent->vision.get());
	scene.ObjectList.push_back(ent->object.get());
	EntityList.push_back(std::move(ent));
	return;
}