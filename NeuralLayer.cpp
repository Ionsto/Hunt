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
void NeuralLayer::Update(const float *inputs){
    int out = 0;
    for(Neuron & neuron : Neurons)
    {
        neuron.Update(inputs);
        Output[out++] = neuron.Output;
    }
}
void NeuralLayer::Randomise(float random)
{
    for(auto & neuron : Neurons)
    {
        neuron.Randomise(random);
    }
}
void NeuralLayer::SetActivation(int activation)
{
	for (auto & neuron : Neurons)
	{
		neuron.ActivationFunction = activation;
	}
}