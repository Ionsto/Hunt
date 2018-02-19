#pragma once
class Vector{
public:
    float X,Y;
    Vector(float x = 0,float y = 0):X(x),Y(y){};
    float Dot(const Vector & vec)
    {
      return (X * vec.X) + (Y * vec.Y);
    }
    Vector operator-(const Vector & vec)
    {
        return Vector(X - vec.X,Y - vec.Y);
    }
    Vector operator+(const Vector & vec)
    {
        return Vector(X + vec.X,Y + vec.Y);
    }
    Vector operator*(const float val)
    {
        return Vector(X * val,Y * val);
    }
    void operator+=(const Vector & vec)
    {
        X += vec.X;
        Y += vec.Y;
    }
    void operator*=(const float val)
    {
        X *= val;
        Y *= val;
    }
};
