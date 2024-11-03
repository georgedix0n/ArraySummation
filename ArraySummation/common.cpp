

int reduction_cpu(int* input, const int size)
{
	int sum = 0;
	for (int i = 0; i < length; i++)
	{
		sum += input[i];
	}
	return sum;
}

void compare_results(int gpu_result, int cpu_result)
{
	printf("GPU result: %d, CPU result: %d \n", gpu_result, cpu_result);

	if (gpu_result == cpu_result)
	{
		printf("results same");
		return;
	}
	printf("Results different\n");
}
