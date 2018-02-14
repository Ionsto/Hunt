#pragma once
#include "RenderObject.h"
#include <math.h>
class RenderObjectCircle : public RenderObject{
public:
    float RadiusSquared;
    RenderObjectCircle(float rad){
        RadiusSquared = rad*rad;
        Colour = 1;
    }
    virtual Intersection GetRayIntersection(RenderRay & ray)
    {
        Vector Diff = Pos - ray.Pos;
        float DiffSqrd = Diff.Dot(Diff);
        float Projected = Diff.Dot(ray.Direction);
        float ProjectedSqrd = Projected*Projected;
        if(ProjectedSqrd < (ray.MaxDistance * ray.MaxDistance) + RadiusSquared)
        {
            //H^2 = O^2 + A^2
            float RadialDistanceSqrd = DiffSqrd - ProjectedSqrd;
            if(RadialDistanceSqrd <= RadiusSquared)
            {
				//Intersection
				float lengthdelta = sqrtf(RadiusSquared - RadialDistanceSqrd);
				float truedistance = sqrtf(ProjectedSqrd) - lengthdelta;
				if(truedistance < ray.MaxDistance)
				{
					return Intersection(true,truedistance,Colour);
				}
			}
        }
        return Intersection(false,0,0);
    };
};
