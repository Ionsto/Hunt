#include <algorithm>
#include "NeuralNet.h"
#include <iostream>

NeuralNet::NeuralNet() {
	InputSize = 0;
	Inputs = nullptr;
	Outputs = nullptr;
}
NeuralNet::NeuralNet(int inputsize) {
	InputSize = inputsize;
	Inputs = new float[InputSize];
	Outputs = new float[3];
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
NeuralNet::NeuralNet(NeuralNet const& net) : NeuralNet()
{
    InputSize = net.InputSize;
	Inputs = new float[InputSize];
	Outputs = new float[3];
    Layers = std::vector<NeuralLayer>(net.Layers);
}
NeuralNet::~NeuralNet(){
	delete Inputs;
	delete Outputs;
}
void NeuralNet::Update()
{
	Layers[0].Update(Inputs);
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
}

void NeuralNet::Randomise(float random)
{
    for(auto& layer : Layers)
    {
        layer.Randomise(random);
    }
}

