#pragma once
#include "Entity.h"
class EntityAI :
    public Entity
{
public:
    NeuralNet * brain;
    RayCamera * vision;
    Entity(World * world);
    ~Entity();
    virtual void UpdateAI(Entity & other) override;
    void Randomise(float random);
}
