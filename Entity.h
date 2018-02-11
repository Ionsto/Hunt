#pragma once
#include "Vector.h"
#include "NeuralNet.h"
class World;
class Entity{
public:
    World * worldObj;
    NeuralNet * brain;
    Vector Pos;
    Vector Vel;
    Vector Acc;
    Entity(World * world);
    ~Entity();
    void Intergrate();
    void Update(Entity & other);
    void UpdateAI(Entity & other);
    void Randomise(float random);
};
