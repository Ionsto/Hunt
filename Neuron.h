#pragma once
class Neuron{
public:
    int InputSize = 0;
    float Output = 0;
    float Bias = 0;
    float * Weights;
    float HiddenState = 0;
    Neuron(int inputsize);
    Neuron(const Neuron & ner);
    ~Neuron();
    void Update(float * Input);
    float Tanh(float x);
    void Mutate(float delta = 0.5);
};
