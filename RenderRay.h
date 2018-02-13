#pragma once
class RenderRay{
public:
    Vector Pos;
    Vector Direction;
    float MaxDistance = 10;
    float Distance = 0;
    int Colour = 0;
    RenderRay(){};
    RenderRay(Vector pos,Vector dir,float max):Pos(pos),Direction(dir)
    {

    };
};
