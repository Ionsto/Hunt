#include <stdint.h>
#include <iostream>
#include <array>
#include <chrono>
#include <bitset>
#include <vector>
//int __builtin_popcountll(int);
class BitBrain{
private:
	//Full packing achived
	static const int InputCount = (10*4) + 3;
	static const int NodeCount = 21;
	static const int Convergence = 1;
	static const uint64_t InputMask = 0x0000000F;
	static const int Threshold = (InputCount+NodeCount)/2;
	std::array<uint64_t,NodeCount+1> WorkingMemory = {};
	uint64_t OutputBuffer = 0;
public:
	BitBrain()
	{
		WorkingMemory[0] = 0;
	}
	uint64_t Update(uint64_t input)
	{
		WorkingMemory[0] &= !InputMask;
		WorkingMemory[0] |= input;
		//Reset output buffer
		for(int c = 0;c < Convergence;++c)
		{
			for(int i = 0;i < NodeCount;++i)
			{
				uint64_t result = WorkingMemory[0] ^ WorkingMemory[i+1];
				WorkingMemory[0] &= !(1<<(InputCount+i));
				WorkingMemory[0] =  __builtin_popcountll(result) > Threshold ? 0:1 <<(InputCount+i);
			}
		}
		return WorkingMemory[0];
	}
};
class BitSetBrain{
private:
	//Full packing achived
	static const int InputCount = 10;
	static const int NodeCount = 10;
	static const int Convergence = 1;
	static const uint64_t InputMask = 0x0000000F;
	static const int Threshold = (InputCount+NodeCount)/2;
	std::array<std::bitset<64>,10> WorkingMemory = {};
	uint64_t OutputBuffer = 0;
public:
	BitBrain()
	{
		WorkingMemory[0] = 0;
	}
	std::bitset<64> Update(std::bitset<64> input)
	{
		WorkingMemory[0] &= !InputMask;
		WorkingMemory[0] |= input;
		//Reset output buffer
		for(int c = 0;c < Convergence;++c)
		{
			for(int i = 0;i < NodeCount;++i)
			{
				uint64_t result = WorkingMemory[0] ^ WorkingMemory[i+1];
				WorkingMemory[0] &= !(1<<(InputCount+i));
				WorkingMemory[0] =  __builtin_popcountll(result) > Threshold ? 0:1 <<(InputCount+i);
			}
		}
		return WorkingMemory[0];
	}
};

int main(int argc,char **args)
{
	using namespace std::chrono;
	BitBrain brain = BitBrain();
	uint64_t inputvector = 0x00000004;
	uint64_t output;
	int Runtime = 1000000;
	auto start = std::chrono::high_resolution_clock::now();
	for(int i =0 ;i < 1000000;++i)
	{
		output = brain.Update(inputvector);
	}
	auto end = std::chrono::high_resolution_clock::now();
	auto time_span = duration_cast<nanoseconds>(end - start);
	std::cout << "Timing full:" << time_span.count() << std::endl;
	std::cout << "Timing:" << (float)time_span.count()/Runtime << std::endl;
	std::cout << "Output:" << output << std::endl;
	return 0;
}