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
    void Update(float * input);
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
