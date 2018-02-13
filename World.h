#pragma once
#include "Entity.h"
#include "EntityAI.h"
#include <memory>
class World{
public:
    std::unique_ptr<Entity> Prey;
    std::unique_ptr<Entity> Pred;
    float WinDistance = 2;
    float WorldSize = 50;
    World();
    bool CheckPredWin();
    int PlayGame(int timelimit);
    void Update();
};
