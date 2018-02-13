#pragma once
#include "RenderCamera.h"
#include "RenderObject.h"
#include "RenderRay.h"
class RenderScene{
private:
    std::vector<RenderCamera*> CameraList;
    std::vector<RenderObject*> ObjectList;
public:
    RenderScene();
    void Render();
    void RenderSingleCamera(RenderCamera * camera);
    void RenderSingleRay(RenderRay & ray);
};
