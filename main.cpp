#include "World.h"
#include <iostream>
int MaxPlayTime = 100;

int main(int argc,char **args){
    //Generation
    for(int i = 0;i < 10;++i)
    {
        std::cout<<i<<std::endl;
        World playenv = World();
        int runtime = 0;
        runtime = playenv.PlayGame(MaxPlayTime);
        std::cout<<"Ran for:"<<runtime<<std::endl;
        if(runtime < MaxPlayTime)
        {

        }
    }
}
