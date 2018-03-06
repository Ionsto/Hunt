#pragma once
#include <vector>
#include "Neuron.h"
#include "NeuralLayer.h"
#include <iostream>
class NeuralNet{
public:
	NeuralNet();
    NeuralNet(NeuralNet const& net);
	virtual ~NeuralNet();
	virtual std::vector<float> Update(std::vector<float> const & Inputs);
	virtual  void Randomise(float delta = 0.5);
	friend std::ostream& operator<<(std::ostream & os, const NeuralNet & net)
	{
		return os;
	};
	friend std::istream& operator>>(std::istream & is,  NeuralNet & net)
	{
		return is;
	};
};
