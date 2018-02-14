#pragma once
#include "RenderCamera.h"
#include "RenderObject.h"
#include "RenderRay.h"
class RenderScene{
public:
    std::vector<RenderCamera*> CameraList;
    std::vector<RenderObject*> ObjectList;
    RenderScene();
    void Render();
    void RenderSingleCamera(RenderCamera * camera);
    void RenderSingleRay(RenderRay & ray);
};
