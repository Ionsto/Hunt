#pragma once
#include "Entity.h"
#include "RenderCamera.h"
#include "RenderObjectCircle.h"
class EntityAI :
    public Entity
{
public:
    NeuralNet * brain;
    RenderCamera * vision;
    RenderObject * object;
    EntityAI();
    ~EntityAI();
    virtual void UpdateAI(World & world) override;
    void Randomise(float random);
};
