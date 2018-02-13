#include "RenderCamera.h"

RenderCamera::RenderCamera(int samplecount)
{
    SampleCount = samplecount;
    VisionData.reserve(samplecount);
}
