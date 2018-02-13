#include "RenderScene.h"
#include <math.h>
void RenderScene::Render()
{
    for(auto cam : CameraList)
    {
        RenderSingleCamera(cam);
    }
}

void RenderScene::RenderSingleCamera(RenderCamera * camera)
{
    float HalfSampleCount = camera->SampleCount/2.0;
    float SampleSlice = camera->FOV/camera->SampleCount;
    for(int i = 0; i < camera->SampleCount;++i)
    {
        float RayAngle = camera->Angle + SampleSlice*(i-HalfSampleCount);
        Vector Direction = Vector(cosf(RayAngle),sinf(RayAngle));
        RenderRay ray = RenderRay(camera->Pos,Direction,camera->MaxDistance);
        RenderSingleRay(ray);
    }
}

void RenderScene::RenderSingleRay(RenderRay & ray)
{
}
