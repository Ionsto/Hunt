#include "Entity.h"
#include "World.h"
#include <iostream>
Entity::Entity()
{
    Pos = Vector();
    Vel = Vector();
    Acc = Vector();
    Rot =  0;
    RotAcc =  0;
    RotVel =  0;
    LinearFriction = 0.8;
    LinearFrictionRot = 0.8;
}
void Entity::CheckBounds(World & world)
{
	//Fix is borked
    if(abs(Pos.X + Vel.X) >= world.WorldSize)
    {
        Pos.X = (world.WorldSize-0.1) * Pos.X/fabs(Pos.X);
        Vel.X = 0;
    }
    if(abs(Pos.Y + Vel.Y) >= world.WorldSize)
    {
        Pos.Y = (world.WorldSize - 0.1) * Pos.Y/fabs(Pos.Y);
        Vel.Y = 0;
    }
}
void Entity::Intergrate(World & world){
    //DT = 1
    CheckBounds(world);
    Pos += Vel;
    Vel += Acc;
    Vel *= LinearFriction;
    Acc.X = 0;
    Acc.Y = 0;
    Rot += RotVel;
    RotVel += RotAcc;
    RotVel *= LinearFrictionRot;
    RotAcc = 0;
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
