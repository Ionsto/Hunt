#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include "math.h"
#include <functional>
template<int Inputs,int Nodes>
class NeuralBrain {
public:
	int NodeCount = Nodes;
	int InputCount = Inputs;
	int ActivationFunction = 0;
	static constexpr int Stride = (Inputs + 1 + Nodes);
	/*
	Bulk allocate ourselves some of that memory bois
	Layout
	Inputs,Bias,Outputs*
	Weights.0
	...

	Weights.n
	*/
	std::array<char, (Inputs + 1 + Nodes)> WorkingMemory = {};
	NeuralBrain();
	//NeuralBrain(NeuralBrain const& ner);
    ~NeuralBrain();
    void Update();
	inline float Tanh(float x)
	{
		return x / (1.0 + fabs(x));
	}
	inline float Relu(float x)
	{
		return x > 0 ? x : 0;
	}
    void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & is, const NeuralBrain<Inputs,Nodes> & ner)
	{
		//Bias
		is << 1;
		is << " ";
		//Input/output vector
		for (int i = 1; i < Stride; ++i)
		{
			is << 0;
			is << " ";
		}
		//Weight matrix
		for (int i = Stride; i < ner.WorkingMemory.size(); ++i)
		{
			is << (ner.WorkingMemory[i]);
			is << " ";
		}
		return is;
	};
	friend std::istream& operator>>(std::istream & is, NeuralBrain<Inputs, Nodes> & ner)
	{
		for (int i = 0; i < ner.WorkingMemory.size(); ++i)
		{
			is >> (ner.WorkingMemory[i]);
		}
		return is;
	};
};


template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::NeuralBrain()
{
	WorkingMemory[0] = 1;
}
template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::~NeuralBrain()
{
}
/*
template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::NeuralBrain(NeuralBrain<Inputs, Nodes> const& ner)
{
//std::cout<<"Nueron cpy construct"<<std::endl;
WorkingMemory = ner.WorkingMemory;
}*/
template<int Inputs, int Nodes>
void NeuralBrain<Inputs, Nodes>::Update()
{
	//std::cout<<"Output"<<Output<<"\n";
	//std::cout<<"Bias"<<Bias<<"\n";
	for (int Node = 1; Node <= Nodes; ++Node)
	{
		float sum = 0;
		int StartWeight = Node * Stride;
#pragma omp simd reduction(+:sum)
		for (int i = 0; i < Stride; ++i)
		{
			sum += WorkingMemory[i] * WorkingMemory[StartWeight + i];
		}
		WorkingMemory[Inputs + 1 + Node] = Tanh(sum);
	}
}
template<int Inputs, int Nodes>
void NeuralBrain<Inputs, Nodes>::Randomise(float random)
{
	for (int w = 1; w <= Nodes; ++w)
	{
		WorkingMemory[w] += ((std::rand() / (RAND_MAX / 2.0)) - 1) * 100 * random;
	}
	//std::cout<<"Bias"<<Bias<<"\n";
}
