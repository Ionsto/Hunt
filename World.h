#pragma once
#include "Entity.h"
#include "EntityAI.h"
#include "RenderScene.h"
#include "RenderObjectLine.h"
#include <memory>
class World{
public:
    std::unique_ptr<EntityAI> Prey;
    std::unique_ptr<EntityAI> Pred;
    std::unique_ptr<RenderObjectLine> Walls[4];
    RenderScene scene;
    float WinDistance = 1;
    float WorldSize = 9;
    World();
    bool CheckPredWin();
    int PlayGame(int timelimit);
    void Update();
    void AddEntity(Entity * ent);
};
