#include <algorithm>
#include "NeuralLayer.h"
#include "NeuralNetFF.h"
#include <iostream>

NeuralNetFF::NeuralNetFF() : NeuralNet() {
	InputSize = 0;
	Outputs = std::vector<float>(3);
}
NeuralNetFF::NeuralNetFF(int inputsize) : NeuralNet() {
	InputSize = inputsize;
	Inputs = std::vector<float>(InputSize);
	Outputs = std::vector<float>(3);
	Layers.emplace_back(NeuralLayer(InputSize, 40));
	//Set layer to relu
	Layers.back().SetActivation(1);
	//Layers.emplace_back(NeuralLayer(60, 20));
	Layers.emplace_back(NeuralLayer(40, 20));
	Layers.back().SetActivation(1);
	Layers.emplace_back(NeuralLayer(20, 20));
	Layers.back().SetActivation(1);
	Layers.emplace_back(NeuralLayer(20, 20));
	Layers.back().SetActivation(1);
	Layers.emplace_back(NeuralLayer(20, 20));
	Layers.back().SetActivation(1);
	Layers.emplace_back(NeuralLayer(20, 3));
}
NeuralNetFF::NeuralNetFF(NeuralNetFF const& net) : NeuralNetFF()
{
    InputSize = net.InputSize;
	Inputs.reserve(InputSize);
	Inputs.reserve(3);
    Layers = std::vector<NeuralLayer>(net.Layers);
}
NeuralNetFF::~NeuralNetFF(){
}
std::vector<float> NeuralNetFF::Update(std::vector<float> const&Inputs)
{
	Layers[0].Update(&Inputs[0]);
    for (int l = 1 ; l < Layers.size();++l)
    {
        Layers[l].Update(Layers[l-1].Output);
    }
    //Memcpy from last layer :/
    int out = 0;
    for(auto& neuron : Layers[Layers.size()-1].Neurons)
    {
		Outputs[out++] = neuron.Output;
	}
	return Outputs;
}

void NeuralNetFF::Randomise(float random)
{
    for(auto& layer : Layers)
    {
        layer.Randomise(random);
    }
}

