#pragma once
#include "RenderObject.h"
#include <math.h>
#include <iostream>
class RenderObjectLine : public RenderObject{
public:
    Vector Dir;
    float Length;
    RenderObjectLine(Vector start,Vector delta){
        Pos = start;
        Dir = delta;
        Length = sqrtf(Dir.Dot(Dir));
    }
    virtual Intersection GetRayIntersection(RenderRay & ray)
    {
		Vector TransformedPos = Pos - ray.Pos;
		float Det = (ray.Direction.X * -Dir.Y) - (ray.Direction.Y * -Dir.X);
		//Solutionless -> Vectors parralel
		if(Det != 0)
		{
			//std::cout<<Dir.X<<","<<Dir.Y<<"\n";
			//std::cout<<TransformedPos.X<<","<<TransformedPos.Y<<"\n";
			float DistRay = (1.0/Det) * ((-Dir.Y*TransformedPos.X) + (Dir.X*TransformedPos.Y));
			float DistSelf = (1.0/Det) * ((-ray.Direction.Y*TransformedPos.X) + (ray.Direction.X*TransformedPos.Y));
			//std::cout<<"Ray distance:"<<DistRay<<"\n";
			//std::cout<<"Self distance:"<<DistSelf<<"\n";
			if(DistSelf >= 0 && DistSelf <= 1 &&
				DistRay >= 0 && DistRay <= ray.MaxDistance)
			{
				return Intersection(true,DistRay,Colour);
			}
		}
        return Intersection(false,0,0);
    };
};
