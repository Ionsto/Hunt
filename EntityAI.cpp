#include "EntityAI.h"
#include <iostream>
#include "NeuralNetFF.h"
#include "NeuralBit.h"
#include <memory>

EntityAI::EntityAI()
{
	
    object = std::make_unique<RenderObjectCircle>(1.5);
	object->Colour = 1;
	object->Pos = Pos;
	vision = std::make_unique<RenderCamera>(10);
	vision->Exclude = object.get();
	int inputs = 4*vision->SampleCount + 3;
	Inputs = std::vector<float>(inputs);
	brain = std::make_unique<NeuralBit<123, 50>>();
	MaxAcceleration = 0.1;
}
EntityAI::~EntityAI()
{
}
Colour EntityAI::RayToRGB(RenderRay & ray)
{
	auto rawcolour = ColourMapping[ray.Colour];
	auto maxcolour = ColourMapping[0];
	float blendfactor = ray.Distance/ray.MaxDistance;
	return Colour(((rawcolour.R*(1-blendfactor)) + (maxcolour.R*blendfactor)),
	((rawcolour.G*(1-blendfactor)) + (maxcolour.G*blendfactor)),
	((rawcolour.B*(1-blendfactor)) + (maxcolour.B*blendfactor)));
}
void EntityAI::UpdateAI(World & world)
{
	object->Pos = Pos;
	vision->Pos = Pos;
	vision->Angle = Rot;
	//Push render data to brain
	int inputpos = 0;
	//std::cout << "start"<<std::endl;
	for(int i = 0;i < vision->SampleCount;++i)
	{
		Colour raydata = RayToRGB(vision->VisionData[i]);
		Inputs[inputpos++] = raydata.R;
		Inputs[inputpos++] = raydata.G;
		Inputs[inputpos++] = raydata.B;
		Inputs[inputpos++] = vision->VisionData[i].Distance;
	}
	Inputs[inputpos++] = Vel.X;
	Inputs[inputpos++] = Vel.Y;
	Inputs[inputpos++] = RotVel;
	//std::cout << "Update" << std::endl;
	std::vector<float> Outputs = brain->Update(Inputs);
	//parallel
	int i = 0;
	Acc += Vector(cos(Rot), sin(Rot)) * Outputs[i++] * MaxAcceleration;
	//perp
	Acc += Vector(-sin(Rot), cos(Rot)) * Outputs[i++] * MaxAcceleration;
	RotAcc =Outputs[i++]  *0.08;
	//std::cout<<"BrainOutput"<<brain->Outputs[0]<<"\n";
}
void EntityAI::Randomise(float random)
{
	brain->Randomise(random);
}
