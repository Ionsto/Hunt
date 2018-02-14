#pragma once
#include "RenderRay.h"
class RenderObject{
public:
    Vector Pos;
    int Colour;
    virtual Intersection GetRayIntersection(RenderRay & ray)
    {
        return Intersection(false,0,0);
    };
};
