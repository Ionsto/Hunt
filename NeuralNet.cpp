#include <algorithm>
#include "NeuralNet.h"
#include <iostream>
NeuralLayer::NeuralLayer()
{
    Output = nullptr;
}
NeuralLayer::NeuralLayer(int inputsize,int count)
{
    //std::cout<<"Neural aloc:"<<count<<std::endl;
    InputSize = inputsize;
    Output = new float[count];
    for(int i = 0;i < count;++i)
    {
        Neurons.emplace_back(Neuron(inputsize));
    }
}
NeuralLayer::NeuralLayer(NeuralLayer const& ner)
{
    Neurons = std::vector<Neuron>(ner.Neurons);
    InputSize = ner.InputSize;
    Output = new float[Neurons.size()];
}
NeuralLayer::~NeuralLayer()
{
    //std::cout<<"Dealoc Neural layer"<<std::endl;
    delete Output;
    //std::cout<<"finished with output"<<std::endl;
}
void NeuralLayer::Update(float *inputs){
    int out = 0;
    for(auto&& neuron : Neurons)
    {
        neuron.Update(inputs);
        Output[out++] = neuron.Output;
    }
}
void NeuralLayer::Randomise(float random)
{
    for(auto && neuron : Neurons)
    {
        neuron.Randomise(random);
    }
}
NeuralNet::NeuralNet() {
	InputSize = 0;
	Inputs = nullptr;
	Outputs = nullptr;
}
NeuralNet::NeuralNet(int inputsize) {
	InputSize = inputsize;
	Inputs = new float[InputSize];
	Outputs = new float[3];
	Layers.emplace_back(NeuralLayer(InputSize, 4));
	Layers.emplace_back(NeuralLayer(4, 4));
	Layers.emplace_back(NeuralLayer(4, 3));
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
    for(auto&& neuron : Layers[Layers.size()-1].Neurons)
    {
		Outputs[out++] = neuron.Output;
	}
}

void NeuralNet::Randomise(float random)
{
    for(auto&& layer : Layers)
    {
        layer.Randomise(random);
    }
}

