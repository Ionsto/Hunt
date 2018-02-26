#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include "math.h"
#include <functional>
class Neuron{
public:
    int InputSize = 0;
    float Output = 0;
    float Bias = 0;
    float * Weights;
    float HiddenState = 0;
	int ActivationFunction = 0;
    Neuron(int inputsize);
    Neuron(Neuron const& ner);
    ~Neuron();
    void Update(float * Input);
	inline float Tanh(float x)
	{
		return x / (1.0 + fabs(x));
	}
	inline float Relu(float x)
	{
		return x > 0 ? x : 0;
	}
    void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & is, const Neuron & ner)
	{
		is << std::to_string(ner.Bias);
		is << " ";
		for (int i = 0; i < ner.InputSize + 1; ++i)
		{
			is << (ner.Weights[i]);
			is << " ";
		}
		return is;
	};
	friend std::istream& operator>>(std::istream & os, Neuron & ner)
	{
		os >> ner.Bias;
		for (int i = 0; i < ner.InputSize + 1; ++i)
		{
			os >> ner.Weights[i];
		}
		return os;
	};
};
