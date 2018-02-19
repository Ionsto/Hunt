#pragma once
#include "Entity.h"
#include "RenderCamera.h"
#include "RenderObjectCircle.h"
#include <array>
struct Colour{
	int R,G,B;
	Colour(int r=0, int g=0,int b=0) : R(r), G(g),B(b) {};
};
class EntityAI :
    public Entity
{
private:
	Colour ColourMapping[5] = {Colour(255,255,255),Colour(0,0,0),Colour(255,0,0),Colour(0,255,0),Colour(0,0,255)};
public:
	
    NeuralNet * brain;
    RenderCamera * vision;
    RenderObject * object;
    EntityAI();
    ~EntityAI();
    Colour RayToRGB(RenderRay & ray);
    virtual void UpdateAI(World & world) override;
    void Randomise(float random);
};
