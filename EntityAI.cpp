#include "EntityAI.h"
#include <iostream>

EntityAI::EntityAI()
{
    object = new RenderObjectCircle(1);
	object->Colour = 1;
	object->Pos = Pos;
	vision = new RenderCamera(50);
	vision->Exclude = object;
	int inputs = 10*vision->SampleCount + 4;
	brain = new NeuralNet(inputs);
	MaxAcceleration = 0.05;
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
	for(int i = 0;i < vision->SampleCount;++i)
	{
		Colour raydata = RayToRGB(vision->VisionData[i]);
		brain->Inputs[inputpos++] = raydata.R;
		brain->Inputs[inputpos++] = raydata.G;
		brain->Inputs[inputpos++] = raydata.B;
		brain->Inputs[inputpos++] = vision->VisionData[i].Distance;
	}
	brain->Inputs[inputpos++] = Vel.X;
	brain->Inputs[inputpos++] = Vel.Y;
	brain->Inputs[inputpos++] = RotVel;
	brain->Update();
	//parallel
	Acc += Vector(cos(Rot), sin(Rot)) * brain->Outputs[0] * MaxAcceleration;
	//perp
	Acc += Vector(sin(Rot), cos(Rot)) * brain->Outputs[1] * MaxAcceleration;
	RotAcc = brain->Outputs[2]*0.001;
	//std::cout<<"BrainOutput"<<brain->Outputs[0]<<"\n";
}
void EntityAI::Randomise(float random)
{
	brain->Randomise(random);
}
