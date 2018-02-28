#include "EntityAI.h"
#include <iostream>
#include "NeuralNetFF.h"
#include "NeuralBrain.h"

EntityAI::EntityAI()
{
    object = new RenderObjectCircle(1.5);
	object->Colour = 1;
	object->Pos = Pos;
	vision = new RenderCamera(20);
	vision->Exclude = object;
	int inputs = 4*vision->SampleCount + 3;
	Inputs = std::vector<float>(inputs);
	brain = new NeuralBrain<83,15>();
	MaxAcceleration = 0.1;
}
EntityAI::~EntityAI()
{
	delete object;
	delete vision;
	delete brain;
}
Colour EntityAI::RayToRGB(RenderRay & ray)
{
	auto rawcolour = ColourMapping[ray.Colour];
	auto maxcolour = ColourMapping[0];
	float blendfactor = ray.Distance/ray.MaxDistance;
	return Colour(int((rawcolour.R*(1-blendfactor)) + (maxcolour.R*blendfactor)),
	int((rawcolour.G*(1-blendfactor)) + (maxcolour.G*blendfactor)),
	int((rawcolour.B*(1-blendfactor)) + (maxcolour.B*blendfactor)));
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
	Acc += Vector(cos(Rot), sin(Rot)) * Outputs[0] * MaxAcceleration;
	//perp
	Acc += Vector(sin(Rot), cos(Rot)) * Outputs[1] * MaxAcceleration;
	RotAcc = Outputs[2]*0.08;
	//std::cout<<"BrainOutput"<<brain->Outputs[0]<<"\n";
}
void EntityAI::Randomise(float random)
{
	brain->Randomise(random);
}
