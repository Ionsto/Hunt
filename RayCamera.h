#pragma once
#include <array>
#include "Vector.h"
class RayCamera{
public:
    Vector Pos;
    float HalfAng;
    int SampleCount;
    //Vision data goes from -halfang to +halfang
    std::vector<int> VisionData;
    RayCamera(int samplecount);
}
