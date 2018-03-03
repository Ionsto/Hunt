#pragma once
#include "Entity.h"
#include "EntityAI.h"
#include "RenderScene.h"
#include "RenderObjectLine.h"
#include <memory>
class World{
public:
	std::vector<std::unique_ptr<EntityAI>> EntityList;
    std::unique_ptr<RenderObjectLine> Walls[4];
    RenderScene scene;
    float WinDistance = 1.5*2;
    float WorldSize = 9;
    World();
    bool CheckPredWin();
    int PlayGame(int timelimit);
    void Update();
    void AddEntity(std::unique_ptr<EntityAI> ent,Vector pos);
};
