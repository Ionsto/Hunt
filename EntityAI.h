#pragma once
#include "Entity.h"
#include "RenderCamera.h"
#include "RenderObjectCircle.h"
#include <array>
#include <memory>
struct Colour{
	float R,G,B;
	Colour(float r=0, float g=0, float b=0) : R(r), G(g),B(b) {};
};
class EntityAI :
    public Entity
{
private:
	Colour ColourMapping[5] = {Colour(1,1,1),Colour(0,0,0),Colour(1,0,0),Colour(0,1,0),Colour(0,0,1) };
public:
	std::vector<float> Inputs;
    std::unique_ptr<NeuralNet> brain;
	std::unique_ptr<RenderCamera> vision;
	std::unique_ptr<RenderObject> object;
    EntityAI();
    ~EntityAI();
    Colour RayToRGB(RenderRay & ray);
    virtual void UpdateAI(World & world) override;
    void Randomise(float random);
};
