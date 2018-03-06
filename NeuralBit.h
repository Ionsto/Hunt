#pragma once
#include <iostream>
#include <fstream>
#include <random>
#include "NeuralNet.h"
#include <vector>
#include <intrin.h>
#include <bitset>

//SUPA FAST XOR BRAIN

template<int Inputs, int Nodes>
class NeuralBit : public NeuralNet{
private:
	//Full packing achived
	static const int Convergence = 2;
	static const int AccumulateCount = 10;
	static constexpr int ColourCount = 5;
	static constexpr float ColourThreshold  = 1.0/ColourCount;
	static const uint64_t InputMask = 0x0000000F;
	int Threshold = (Nodes+Inputs)/2;
	std::vector<float> Output;
public:
	std::array<std::bitset<Inputs+Nodes>,Nodes+1> WorkingMemory = {};
	NeuralBit();
	virtual ~NeuralBit();
	NeuralBit(NeuralBit const& ner);
	virtual std::vector<float> Update(std::vector<float> const & input) override;
	void MapInputsToBinary(std::vector<float> const & inputvec);
	void MapBinaryToOutput();
	virtual void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & is, const NeuralBit<Inputs, Nodes> & ner)
	{
		is << ner.Threshold << " ";
		for (int i = 0; i < ner.WorkingMemory[0].size(); ++i)
		{
			is << 0;
		}
		is  << " ";
		for (int i = 1; i < ner.WorkingMemory.size(); ++i)
		{
			is << (ner.WorkingMemory[i]) << " ";
		}
		return is;
	};
	friend std::istream& operator>>(std::istream & is, NeuralBit<Inputs, Nodes> & ner)
	{
		is >> ner.Threshold;
		for (int i = 0; i < ner.WorkingMemory.size(); ++i)
		{
			is >> ner.WorkingMemory[i];
		}
		return is;
	};
};

template<int Inputs, int Nodes>
NeuralBit<Inputs, Nodes>::NeuralBit() : NeuralNet()
{
	//std::cout<<"construct"<<std::endl;
	Output = std::vector<float>();
	Output.resize(3,0); 
}

template<int Inputs, int Nodes>
NeuralBit<Inputs, Nodes>::~NeuralBit()
{
	//std::cout<<"dstr"<<std::endl;
}
template<int Inputs, int Nodes>
NeuralBit<Inputs, Nodes>::NeuralBit(NeuralBit<Inputs, Nodes> const& ner) : NeuralBit<Inputs, Nodes>()
{
	WorkingMemory = ner.WorkingMemory;
	Threshold = ner.Threshold;
	WorkingMemory[0] = 0;
	//Output = ner.Output;
}
template<int Inputs, int Nodes>
void NeuralBit<Inputs, Nodes>::MapInputsToBinary(std::vector<float> const & inputvec)
{
	int n = 0;
	int i = 0;
	//Colour component
	for (i = 0; i < inputvec.size() - 3;)
	{
		for (int c = 0; c < ColourCount; ++c)
		{
			WorkingMemory[0][n++] = inputvec[i] > ColourThreshold*c ? 1 : 0;
		}
		++i;
		for (int c = 0; c < ColourCount; ++c)
		{
			WorkingMemory[0][n++] = inputvec[i] > ColourThreshold*c ? 1 : 0;
		}
		++i;
		for (int c = 0; c < ColourCount; ++c)
		{
			WorkingMemory[0][n++] = inputvec[i] > ColourThreshold*c ? 1 : 0;
		}
		++i;
		++i;
		//WorkingMemory[0][i++] = inputvec[i] > DistanceThreshold ? 1 : 0;
	}
	//Vel.X,Vel.Y,RotVel
	WorkingMemory[0][n++] = inputvec[i] > 0 ? 1 : 0;
	++i;
	WorkingMemory[0][n++] = inputvec[i] > 0 ? 1 : 0;
	++i;
	WorkingMemory[0][n++] = inputvec[i] > 0 ? 1 : 0;
	++i;
}
template<int Inputs, int Nodes>
void NeuralBit<Inputs, Nodes>::MapBinaryToOutput()
{
	int nodeacc = 1;
	for(int i = 0;i < Output.size();++i)
	{
		float acc = 0;
		for(int sum = 0;sum < AccumulateCount;++sum)
		{
			acc += WorkingMemory[0][Inputs+Nodes - (nodeacc++)] ? 1 : -1;
		}
		Output[i] = acc/(float)AccumulateCount;
	}
}
template<int Inputs, int Nodes>
std::vector<float> NeuralBit<Inputs, Nodes>::Update(std::vector<float> const & inputvec)
{
	MapInputsToBinary(inputvec);
	for(int c = 0;c < Convergence;++c)
	{
		for(int i = 0;i < Nodes;++i)
		{
			//XOR inputs + previous outputs :  weights
			std::bitset<Inputs + Nodes> result = WorkingMemory[0] ^ WorkingMemory[i+1];
			//Flush previous output
			//WorkingMemory[0] &= !(1<<(Inputs+i));
			//Load our new output (sum of 1ns > threshold)
			//WorkingMemory[0] |=  __builtin_popcountll(result) > Threshold ? 1:0 <<(Inputs+i);
			WorkingMemory[0][Inputs + i] = result.count() > Threshold ? 1 : 0;
		}
	}
	MapBinaryToOutput();
	return Output;
}
template<int Inputs, int Nodes>
void NeuralBit<Inputs, Nodes>::Randomise(float random)
{
    std::random_device rd;

    std::mt19937_64 e2(rd());

    std::uniform_int_distribution<int> WeightUpdate(0,floor(10/random));
    std::uniform_int_distribution<int> ThresholdUpdate(-5,5);

	Threshold += ThresholdUpdate(e2);
	if(Threshold <= 0)
	{
		Threshold = 1;
	}
	for (int w = 0; w < Nodes; ++w)
	{
		for (int i = 0; i < Inputs+Nodes; ++i)
		{
			//IDK randomise these guys
			if(WeightUpdate(e2) < 2)
			{
				WorkingMemory[w+1][i] = !WorkingMemory[w+1][i];
			}
		}
	}
}
