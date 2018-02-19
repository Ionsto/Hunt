#include "Neuron.h"
#include "math.h"
#include <cstring>
#include <cstdlib>
#include <iostream>
Neuron::Neuron(int is)
: InputSize(is)
{
    //std::cout<<"Pre-neuron alocs"<<std::endl;
    Output = 0;
    Weights = new float[InputSize + 1];
    memset(Weights,0,sizeof(float) * (InputSize + 1));
    Bias = 0.1;
    //std::cout<<"post neruon alocs"<<std::endl;
}
Neuron::~Neuron()
{
    //std::cout<<"Dealoc Neuron"<<std::endl;
    delete Weights;
}
Neuron::Neuron(Neuron const& ner)
{
    //std::cout<<"Nueron cpy construct"<<std::endl;
    InputSize = ner.InputSize;
    Weights = new float[InputSize + 1];
    Bias = ner.Bias;
    std::memcpy(Weights,ner.Weights,sizeof(float)*(InputSize+1));
}
float Neuron::Tanh(float x)
{
    return x/(1.0+fabs(x));
}
void Neuron::Update(float * input)
{
    Output = Bias;
    //std::cout<<"Output"<<Output<<"\n";
    //std::cout<<"Bias"<<Bias<<"\n";
    Output += HiddenState * Weights[0];
    //#pragma omp parallel reduce SIMD
    for(int i = 1;i < InputSize;++i)
    {
        Output += input[i] * Weights[i];
    }
    //std::cout<<"Output:"<<Output<<"\n";
    Output = Tanh(Output);
    HiddenState = Output;
    //std::cout<<"Output"<<Output<<"\n";
}
void Neuron::Randomise(float random)
{
	for(int w = 0;w < InputSize+1;++w)
	{
		Weights[w] += ((std::rand()/(RAND_MAX/2.0))-1)*random;
	}
	Bias += ((std::rand()/(RAND_MAX/2.0))-1)*random;
    //std::cout<<"Bias"<<Bias<<"\n";
}
