#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include "math.h"
#include <functional>
#include "NeuralNet.h"
#include <vector>

template 
<int Inputs, int Nodes>
class NeuralBrain : public NeuralNet {
public:
	std::vector<float> Outputs;
	int ActivationFunction = 0;
	static constexpr int Stride = (Inputs + 1 + Nodes);
	static constexpr int Convergance = 4;
	/*
	Bulk allocate ourselves some of that memory bois
	Layout
	Inputs,Bias,Outputs*
	Weights.0
	...

	Weights.n
	*/
	std::array<float, Stride * (Nodes + 1)> WorkingMemory = {};
	std::vector<float> RandomParam;
	NeuralBrain();
	virtual ~NeuralBrain();
	NeuralBrain(NeuralBrain const& ner);
	virtual std::vector<float> Update(std::vector<float> const & input);
	inline float Tanh(float x)
	{
		return x / (1.0 + fabs(x));
	};
	inline float Relu(float x)
	{
		return x > 0 ? x : 0;
	};
	inline float ClippedIdentity(float x)
	{
		return x > -1 ? (x < 1 ? x :1) : -1;
	};
	virtual void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & is, const NeuralBrain<Inputs, Nodes> & ner)
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
			is << (ner.WorkingMemory[i]) << " ";
		}
		for (int i = 0; i < ner.RandomParam.size(); ++i)
		{
			is << ner.RandomParam[i] << " ";
		}
		return is;
	};
	friend std::istream& operator>>(std::istream & is, NeuralBrain<Inputs, Nodes> & ner)
	{
		for (int i = 0; i < ner.WorkingMemory.size(); ++i)
		{
			is >> (ner.WorkingMemory[i]);
		}
		for (int i = 0; i < ner.RandomParam.size(); ++i)
		{
			is >> ner.RandomParam[i];
		}
		return is;
	};
};


template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::~NeuralBrain()
{

}
template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::NeuralBrain() : NeuralNet(), RandomParam(Nodes)
{
	WorkingMemory[0] = 1;
	for (int i = 0; i < RandomParam.size(); ++i)
	{
		RandomParam[i] = 1;
	}
	Outputs = std::vector<float>();
	Outputs.resize(Nodes, 0);
}
template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::NeuralBrain(NeuralBrain<Inputs, Nodes> const& ner) : NeuralBrain<Inputs, Nodes>()
{
	WorkingMemory = ner.WorkingMemory;
	for (int i = 1; i < Stride; ++i)
	{
		//Sanatise our preset outputs
		WorkingMemory[i] = 0;
	}
	Outputs = std::vector<float>();
	Outputs.resize(Nodes, 0);
}
/*
template<int Inputs, int Nodes>
NeuralBrain<Inputs, Nodes>::NeuralBrain(NeuralBrain<Inputs, Nodes> const& ner)
{
//std::cout<<"Nueron cpy construct"<<std::endl;
WorkingMemory = ner.WorkingMemory;
}*/
template<int Inputs, int Nodes>
std::vector<float> NeuralBrain<Inputs, Nodes>::Update(std::vector<float> const & input)
{
	for (int i = 0; i < Inputs; ++i)
	{
		WorkingMemory[i + 1] = input[i];
	}
	//std::cout<<"Output"<<Output<<"\n";
	//std::cout<<"Bias"<<Bias<<"\n";
	for (int Conv = 0; Conv < Convergance; ++Conv)
	{
		int StartWeight = 0;
		for (int Node = 0; Node < Nodes; ++Node)
		{
			float sum = 0;
			StartWeight += Stride;
			#pragma omp simd reduction(+:sum)
			for (int i = 0; i < Stride; ++i)
			{
				sum += WorkingMemory[i] * WorkingMemory[StartWeight + i];
			}
			//Output
			WorkingMemory[Inputs+1 + Node] = ClippedIdentity(sum);
		}
	}
	//Go backwards
	for (int Node = 0; Node < Nodes; ++Node)
	{
		Outputs[Node] = WorkingMemory[Stride - (Node + 1)];
	}
	return Outputs;
}
template<int Inputs, int Nodes>
void NeuralBrain<Inputs, Nodes>::Randomise(float random)
{
	for (int i = 1; i <= Nodes; ++i)
	{
		//RandomParam[i] *= (((std::rand() / (float)RAND_MAX)-1)/2.0);
		for (int w = 0; w < Stride; ++w)
		{
			WorkingMemory[(i*Stride) + w] += ((std::rand() / ((float)RAND_MAX / 2.0)) - 1) * random;// *RandomParam[i];
		}
	}
}
