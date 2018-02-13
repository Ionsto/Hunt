#include "World.h"
#include <iostream>
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
int main(int argc,char **args){
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
