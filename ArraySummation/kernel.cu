
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>


__global__ void reduction_neighbored_pairs(int * input, int * temp, int size)
{

}

int main()
{

	printf("RUNNING neighborded pairs reduction kernel\n");

	int size = 1 << 27;
	int byte_size = size * sizeof(int);

	int block_size = 128;

	int* h_input, * href;
	h_input = (int*)malloc(byte_size);
	initialize(h_input, size, INIT_RANDOM);

	int cpu_result = reduction_cpu(h_input, size);

	dim3 block(block_size);
	dim3 grid(size / block.x);

	int temp_array_byte_size = sizeof(int) * grid.x;

	h_ref = (int*)malloc(temp_array_byte_size);

	int* d_input, * d_temp;

	cudaMalloc((void**)&d_input, byte_size);


	cudaDeviceReset();
	return 0;
}
