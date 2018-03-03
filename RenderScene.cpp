#include "RenderScene.h"
#include <math.h>
RenderScene::RenderScene()
{
}
void RenderScene::Render()
{
    for(auto& cam : CameraList)
    {
        RenderSingleCamera(cam);
    }
}

void RenderScene::RenderSingleCamera(RenderCamera * camera)
{
    float HalfSampleCount = (camera->SampleCount-1)/2.0;
    float SampleSlice = camera->FOV/(camera->SampleCount);
    for(int i = 0; i < camera->SampleCount;++i)
    {
        float RayAngle = camera->Angle + SampleSlice*(i-HalfSampleCount);
        Vector Direction = Vector(cosf(RayAngle),sinf(RayAngle));
        RenderRay ray = RenderRay(camera->Pos,Direction,camera->MaxDistance);
        RenderSingleRay(ray,camera->Exclude);
        camera->VisionData[i] = ray;
    }
}

void RenderScene::RenderSingleRay(RenderRay & ray,RenderObject * exclude)
{
	Intersection ClosestIntersection = Intersection(false,0,0);
	for(RenderObject * Object : ObjectList)
	{
		if(Object != exclude)
		{
			Intersection NewIntersection = Object->GetRayIntersection(ray);
			if(NewIntersection.Intersected)
			{
				if(!ClosestIntersection.Intersected)
				{
					ClosestIntersection = NewIntersection;
				}
				else if(NewIntersection.Distance < ClosestIntersection.Distance)
				{
					ClosestIntersection = NewIntersection;
				}
			}
		}
		if(ClosestIntersection.Intersected)
		{
			ray.Distance = ClosestIntersection.Distance;
			ray.Colour = ClosestIntersection.Colour;
		}
		else
		{
			ray.Distance = ray.MaxDistance;
			ray.Colour = 0;
		}
	}
}
