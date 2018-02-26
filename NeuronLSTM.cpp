#include "NeuronLSTM.h"
#include "math.h"
#include <cstring>
#include <cstdlib>
#include <iostream>
NeuronLSTM::NeuronLSTM(int is)
: InputSize(is)
{
    //std::cout<<"Pre-NeuronLSTM alocs"<<std::endl;
    Output = 0;
    Weights = new float[InputSize + 1];
    memset(Weights,0,sizeof(float) * (InputSize + 1));
    Bias = 0.1;
    //std::cout<<"post neruon alocs"<<std::endl;
}
NeuronLSTM::~NeuronLSTM()
{
    //std::cout<<"Dealoc NeuronLSTM"<<std::endl;
    delete Weights;
}
NeuronLSTM::NeuronLSTM(NeuronLSTM const& ner)
{
    //std::cout<<"Nueron cpy construct"<<std::endl;
    InputSize = ner.InputSize;
    Weights = new float[InputSize + 1];
    Bias = ner.Bias;
    std::memcpy(Weights,ner.Weights,sizeof(float)*(InputSize+1));
}
float NeuronLSTM::Tanh(float x)
{
    return x/(1.0+fabs(x));
}
void NeuronLSTM::Update(float * input)
{
    Output = Bias;
    //std::cout<<"Output"<<Output<<"\n";
    //std::cout<<"Bias"<<Bias<<"\n";
	float sum = 0;
    #pragma omp simd reduction(+:sum)
    for(int i = 0;i < InputSize;++i)
    {
		sum += input[i] * Weights[i];
    }
	Output += sum;
    Output += HiddenState * Weights[InputSize];
    //std::cout<<"Output:"<<Output<<"\n";
    Output = Tanh(Output);
    HiddenState = Output;
    //std::cout<<"Output"<<Output<<"\n";
}
void NeuronLSTM::Randomise(float random)
{
	for(int w = 0;w < InputSize+1;++w)
	{
		Weights[w] += ((std::rand()/(RAND_MAX/2.0))-1)*random;
	}
	Bias += ((std::rand()/(RAND_MAX/2.0))-1)*random;
    //std::cout<<"Bias"<<Bias<<"\n";
}
