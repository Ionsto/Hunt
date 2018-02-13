#pragma once
#include "RenderObject.h"

class RenderObjectCircle : public RenderObject{
    float RadiusSquared;
    virtual bool GetRayIntersection(RenderRay & ray)
    {
        Vector Diff = Pos - ray.Pos;
        float DiffSqrd = Diff.Dot(Diff);
        float ProjectedSqrd = Diff.Dot(ray.Direction * ray.MaxDistance);
        if(ProjectedSqrd < ray.MaxDistance * ray.MaxDistance)
        {
            //H^2 = O^2 + A^2
            float RadialDistanceSqrd = DiffSqrd - (ray.MaxDistance*ray.MaxDistance)
            if(RadialDistanceSqrd < RadiusSquared)
            {
                ray.Distance = sqrtf(ProjectedSqrd);
                ray.Colour = Colour;
                return true;
            }
        }
        return false;
    } override;
};
