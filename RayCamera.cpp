#include "RayCamera.h"

RayCamera::RayCamera(int samplecount)
{
    SampleCount = samplecount;
    VisionData.reserve(samplecount);
}
