#include <stdlib.h>
#include <sys/utime.h>

enum INIT_PARAM {...};

void initialize(int* input, const int array_size, INIT_PARAM PARAM = INIT_ONE_TO_TEN);

int reduction_cpu(int* input, const int size);



void compare_results(int gpu_result, int cpu_result);

#endif