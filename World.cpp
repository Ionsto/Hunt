#include "World.h"
#include <memory>
World::World()
{
    Prey = std::unique_ptr<EntityAI>(new EntityAI());
    Pred = std::unique_ptr<EntityAI>(new EntityAI());
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
    if(Difference.Dot(Difference) < WinDistance)
    {
        return true;
    }
    return false;
}

void World::Update(){
    Prey->Update(*this);
    Pred->Update(*this);
}
