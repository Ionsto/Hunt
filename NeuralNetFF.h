#pragma once
#include <vector>
#include "Neuron.h"
#include "NeuralLayer.h"
#include "NeuralNet.h"
#include <iostream>
class NeuralNetFF : public NeuralNet{
public:
    int InputSize;
	std::vector<float> Inputs;
	std::vector<float> Outputs;
    std::vector<NeuralLayer> Layers;
	NeuralNetFF();
	NeuralNetFF(int inputs);
    NeuralNetFF(NeuralNetFF const& net);
    ~NeuralNetFF();
	virtual std::vector<float> Update(std::vector<float> const& input);
    void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & os, const NeuralNetFF & net)
	{
		for (const NeuralLayer & layer : net.Layers)
		{
			os << layer;
		}
		return os;
	};
	friend std::istream& operator>>(std::istream & is,  NeuralNetFF & net)
	{
		for (NeuralLayer & layer : net.Layers)
		{
			is >> layer;
		}
		return is;
	};
};
