#include "RenderCamera.h"

RenderCamera::RenderCamera(int samplecount)
{
    SampleCount = samplecount;
    VisionData.reserve(samplecount);
    for(int i = 0;i < SampleCount;++i)
	{
		VisionData.emplace_back(RenderRay());
	}
}
