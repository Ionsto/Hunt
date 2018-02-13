#pragma once
#include "RenderRay.h"
class RenderObject{
public:
    Vector Pos;
    virtual bool GetRayIntersection(RenderRay & ray);
};
