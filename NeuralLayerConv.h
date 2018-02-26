#pragma once
#include "NeuralLayer.h"
class NeuralLayerConv :
	public NeuralLayer
{
public:
	int ConvSize;
	int OutputSize;
	NeuralLayerConv();
	NeuralLayerConv(int inputsize,int convsize, int nodecount);
	NeuralLayerConv(NeuralLayerConv const& layer);
	int GetOutputSize();
	void Update(float * input);
};

