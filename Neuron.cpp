#include "Neuron.h"
#include "math.h"
#include <cstring>
#include <iostream>
Neuron::Neuron(int is)
: InputSize(is)
{
    //std::cout<<"Pre-neuron alocs"<<std::endl;
    Output = 0;
    Weights = new float[InputSize + 1];
    Bias = 0;
    //std::cout<<"post neruon alocs"<<std::endl;
}
Neuron::~Neuron()
{
    //std::cout<<"Dealoc Neuron"<<std::endl;
    delete Weights;
}
Neuron::Neuron(const Neuron & ner)
{
    //std::cout<<"Nueron cpy construct"<<std::endl;
    InputSize = ner.InputSize;
    Weights = new float[InputSize + 1];
    Bias = ner.Bias;
    std::memcpy(Weights,ner.Weights,sizeof(float)*(InputSize+1));
}
float Neuron::Tanh(float x)
{
    return x/(1+fabs(x));
}
void Neuron::Update(float * input)
{
    Output = Bias;
    Output += HiddenState * Weights[0];
    #pragma omp parallel reduce SIMD
    for(int i = 1;i < InputSize;++i)
    {
        Output += input[i] * Weights[i];
    }
    Output = Tanh(Output);
    HiddenState = Output;
}
