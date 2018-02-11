#pragma once
#include <vector>
#include "Neuron.h"
class NeuralLayer{
public:
    int InputSize;
    float * Output;
    std::vector<Neuron> Neurons;
    NeuralLayer();
    NeuralLayer(int inputsize,int nodecount);
    NeuralLayer(const NeuralLayer & ner);
    ~NeuralLayer();
    void Update(float * input);
};
class NeuralNet{
public:
    std::vector<float> Inputs;
    std::vector<float> Outputs;
    std::vector<NeuralLayer> Layers;
    NeuralNet();
    void Update();
};
