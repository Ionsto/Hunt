#pragma once
struct Intersection{
	bool Intersected;
	float Distance;
	int Colour;
	Intersection(bool inter,float dist,int colour):Intersected(inter)
	,Distance(dist),Colour(colour){};
};
class RenderRay{
public:
    Vector Pos;
    Vector Direction;
    float MaxDistance = 30;
    float Distance = 0;
    int Colour = 0;
    RenderRay(){};
    RenderRay(Vector pos,Vector dir,float max):Pos(pos),Direction(dir)
    {
    };
};
