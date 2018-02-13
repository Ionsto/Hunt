#pragma once
#include <array>
#include <vector>
#include "Vector.h"
class RenderCamera{
public:
    Vector Pos;
    float Angle = 0;
    float FOV = 60;
    float MaxDistance = 20;
    int SampleCount;
    //Vision data goes from -FOV/2 to +FOV/2
    std::vector<int> VisionData;
    RenderCamera(int samplecount);
};
