#pragma once
#include "Vector.h"
#include "NeuralNet.h"
class World;
class Entity{
public:
    Vector Pos;
    Vector Vel;
    Vector Acc;
	float MaxAcceleration;
    float Rot;
    float RotVel;
    float RotAcc;
    float LinearFriction;
    float LinearFrictionRot;
    Entity();
	virtual ~Entity() {};
    void Intergrate(World & world);
    void CheckBounds(World & world);
    void Update(World & world);
    virtual void UpdateAI(World & world);
    void Randomise(float random);
};
