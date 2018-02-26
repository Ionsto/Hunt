#pragma once
#include <array>
#include <vector>
#include "Vector.h"
#include "RenderRay.h"
#include "RenderObject.h"
class RenderCamera{
public:
    Vector Pos;
    float Angle = 0;
    float FOV = (80/180.0) *3.14;
    float MaxDistance = 20;
    int SampleCount;
    RenderObject * Exclude = nullptr;
    //Vision data goes from -FOV/2 to +FOV/2
    std::vector<RenderRay> VisionData;
    RenderCamera(int samplecount);
};
