#pragma once
#include "RenderRay.h"
class RenderObject{
public:
    Vector Pos;
    int Colour;
    virtual bool GetRayIntersection(RenderRay & ray)
    {
        return false;
    };
};
