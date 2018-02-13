#pragma once
#include "Entity.h"
#include "RenderCamera.h"
class EntityAI :
    public Entity
{
public:
    NeuralNet * brain;
    RenderCamera * vision;
    EntityAI();
    ~EntityAI();
    virtual void UpdateAI(World & world) override;
    void Randomise(float random);
};
