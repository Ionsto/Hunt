#pragma once
#include <iostream>
#include <fstream>
#include <string>
class NeuronLSTM{
public:
    int InputSize = 0;
    float Output = 0;
    float Bias = 0;
    float * Weights;
    float HiddenState = 0;
    NeuronLSTM(int inputsize);
    NeuronLSTM(NeuronLSTM const& ner);
    ~NeuronLSTM();
    void Update(float * Input);
    float Tanh(float x);
    void Randomise(float delta = 0.5);
};
