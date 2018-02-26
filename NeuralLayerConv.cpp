#include <algorithm>
#include "NeuralLayerConv.h"
#include <iostream>
NeuralLayerConv::NeuralLayerConv()
{
	Output = nullptr;
}
NeuralLayerConv::NeuralLayerConv(int inputsize,int convsize, int count)
{
	//std::cout<<"Neural aloc:"<<count<<std::endl;
	InputSize = inputsize;
	ConvSize = ConvSize;
	for (int i = 0; i < count; ++i)
	{
		Neurons.emplace_back(Neuron(ConvSize));
	}
	OutputSize = GetOutputSize();
	Output = new float[OutputSize];
}
NeuralLayerConv::NeuralLayerConv(NeuralLayerConv const& ner)
{
	Neurons = std::vector<Neuron>(ner.Neurons);
	InputSize = ner.InputSize;
	ConvSize = ner.ConvSize;
	OutputSize = GetOutputSize();
	Output = new float[OutputSize];
}
void NeuralLayerConv::Update(float *inputs) {
	int out = 0;
	for (int offset = 0; offset < OutputSize; ++offset)
	{
		for (Neuron & neuron : Neurons)
		{
			neuron.Update(inputs + offset);
			Output[out++] = neuron.Output;
		}
	}
}
int NeuralLayerConv::GetOutputSize()
{
	return (InputSize-(ConvSize-1))*Neurons.size();
}