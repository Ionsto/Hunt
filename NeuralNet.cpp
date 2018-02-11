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
    Output = new float[count];
    for(int i = 0;i < count;++i)
    {
        Neurons.emplace_back(Neuron(inputsize));
    }
}
NeuralLayer::NeuralLayer(const NeuralLayer & ner)
{
    Neurons = ner.Neurons;
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
    for(auto neuron : Neurons)
    {
        neuron.Update(inputs);
    }
}
void NerualLayer::Randomise(float random)
{
    for(auto neuron : Neurons)
    {
        neuron.Randomise(random);
    }
}
NeuralNet::NeuralNet(){
    Layers.emplace_back(NeuralLayer(4,4));
    Layers.emplace_back(NeuralLayer(4,4));
    Layers.emplace_back(NeuralLayer(4,2));
}
void NeuralNet::Update()
{
    for (int l = 1 ; l < Layers.size();++l)
    {
        Layers[l].Update(Layers[l].Output);
    }
}

void NerualNet::Randomise(float random)
{
    for(auto neuron : Neurons)
    {
        neuron.Randomise(random);
    }
}
