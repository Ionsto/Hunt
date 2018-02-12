#pragma once
#include "Vector.h"
#include "NeuralNet.h"
class World;
class Entity{
public:
    NeuralNet * brain;
    Vector Pos;
    Vector Vel;
    Vector Acc;
    Entity();
    ~Entity();
    void Intergrate();
    void Update(World * world);
    virtual void UpdateAI(Entity & other);
    void Randomise(float random);
};
