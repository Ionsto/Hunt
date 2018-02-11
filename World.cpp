#include "World.h"
World::World() : Prey(this) , Pred(this)
{

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
    Vector Difference = Pred.Pos - Prey.Pos;
    if(Difference.Dot(Difference) < WinDistance)
    {
        return true;
    }
    return false;
}

void World::Update(){
    Prey.Update(Pred);
    Pred.Update(Prey);
}
