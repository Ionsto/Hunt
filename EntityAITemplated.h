#pragma once
#include "Entity.h"
#include "RenderCamera.h"
#include "RenderObjectCircle.h"
#include <array>
#include "NeuralBrain.h"
struct Colour{
	int R,G,B;
	Colour(int r=0, int g=0,int b=0) : R(r), G(g),B(b) {};
};
class EntityAI :
    public Entity
{
private:
	Colour ColourMapping[5] = {Colour(1,1,1),Colour(0,0,0),Colour(1,0,0),Colour(0,1,0),Colour(0,0,1) };
public:
    RenderCamera * vision;
    RenderObject * object;
	NeuralBrain<10, 5> OtherBrain;
    EntityAI();
    ~EntityAI();
    Colour RayToRGB(RenderRay & ray);
    virtual void UpdateAI(World & world) override;
    void Randomise(float random);
};
