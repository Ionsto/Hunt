#pragma once
#include "Entity.h"
class World{
public:
    Entity Prey;
    Entity Pred;
    float WinDistance = 2;
    float WorldSize = 50;
    World();
    bool CheckPredWin();
    int PlayGame(int timelimit);
    void Update();
};
