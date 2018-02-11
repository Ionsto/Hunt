#include "Entity.h"
#include "World.h"
#include <iostream>
Entity::Entity(World * world)
{
    //std::cout<<"Pre-brain alocs"<<std::endl;
    brain = new NeuralNet();
    //std::cout<<"Post-brain alocs"<<std::endl;
    worldObj = world;
}
Entity::~Entity()
{
    delete brain;
}
void Entity::Intergrate(){
    //DT = 1
    Pos += Vel;
    Vel += Acc;
    Acc = Vector();
}
void Entity::Update(Entity & other){
    Intergrate();
    UpdateAI(other);
}
void Entity::UpdateAI(Entity & other){

}
