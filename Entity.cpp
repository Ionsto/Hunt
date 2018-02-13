#include "Entity.h"
#include "World.h"
#include <iostream>
Entity::Entity()
{
}
void Entity::CheckBounds(World & world)
{
    
}
void Entity::Intergrate(World & world){
    //DT = 1
    Pos += Vel;
    Vel += Acc;
    Acc = Vector();
}
void Entity::Update(World & world){
    Intergrate(world);
    UpdateAI(world);
}
void Entity::UpdateAI(World & world){

}

void Entity::Randomise(float random)
{

}
