#include <algorithm>
#include "NeuralNet.h"
#include <iostream>

NeuralNet::NeuralNet() {
}
NeuralNet::NeuralNet(NeuralNet const& net) : NeuralNet()
{
}
NeuralNet::~NeuralNet(){
}
std::vector<float> NeuralNet::Update(std::vector<float> const & Inputs)
{
	return std::vector<float>();
}

void NeuralNet::Randomise(float random)
{
}

