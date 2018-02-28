#pragma once
#include <vector>
#include "Neuron.h"
#include <iostream>
class NeuralLayer{
public:
    int InputSize;
    float * Output;
    std::vector<Neuron> Neurons;
    NeuralLayer();
    NeuralLayer(int inputsize,int nodecount);
    NeuralLayer(NeuralLayer const& ner);
    ~NeuralLayer();
	void Update(const float * input);
	void SetActivation(int activation);
    void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & os, const NeuralLayer & layer)
	{
		for (const Neuron & ner : layer.Neurons)
		{
			os << ner;
		}
		return os;
	};
	friend std::istream& operator>>(std::istream & is,  NeuralLayer & layer)
	{
		for (Neuron & ner : layer.Neurons)
		{
			is >> ner;
		}
		return is;
	};
};