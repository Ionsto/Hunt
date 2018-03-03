#include "NeuralBrain.h"
#include <iostream>
#include <chrono>
int main(int argc,char **args)
{
	using namespace std::chrono;
	NeuralBrain<100,100> Brain = NeuralBrain<100,100>();
	std::vector<float> Input(100);
	std::vector<float> Output(100);
	auto start = high_resolution_clock::now();
	for(int i = 0;i < 1000;++i)
	{
		//Output = Brain.Update(Input);
	}
	std::cout<<Output[0]<<"\n";
	auto end = high_resolution_clock::now();
	auto time_span = duration_cast<milliseconds> (end - start);
	std::cout << "Timing full:" << time_span.count() << "\n";
}