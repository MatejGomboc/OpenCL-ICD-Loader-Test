#include <iostream>
#include <vector>
#include "CL/opencl.h"

int main()
{
    cl_uint num_platforms;
    clGetPlatformIDs(0, nullptr, &num_platforms);

    std::vector<cl_platform_id> platforms(num_platforms);
    clGetPlatformIDs(num_platforms, platforms.data(), nullptr);

    std::cout << "num platforms:" << num_platforms << std::endl;
    return 0;
}
