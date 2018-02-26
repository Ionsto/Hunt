#pragma once
#include <vector>
#include "Neuron.h"
#include "NeuralLayer.h"
#include <iostream>
class NeuralNet{
public:
    int InputSize;
    float * Inputs = nullptr;
    float * Outputs = nullptr;
    std::vector<NeuralLayer> Layers;
	NeuralNet();
	NeuralNet(int inputs);
    NeuralNet(NeuralNet const& net);
    ~NeuralNet();
    void Update();
    void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & os, const NeuralNet & net)
	{
		for (const NeuralLayer & layer : net.Layers)
		{
			os << layer;
		}
		return os;
	};
	friend std::istream& operator>>(std::istream & is,  NeuralNet & net)
	{
		for (NeuralLayer & layer : net.Layers)
		{
			is >> layer;
		}
		return is;
	};
};
