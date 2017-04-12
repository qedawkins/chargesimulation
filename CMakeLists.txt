cmake_minimum_required(VERSION 2.8)
set(CUDA_HOST_COMPILER /usr/bin/gcc-5)
find_package(CUDA REQUIRED)

set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS}; -O3 -Wno-deprecated-gpu-targets)

cuda_add_executable(chargesim charge_sim_cuda.cu)

target_link_libraries(
    chargesim
    -lglut
    -lGL
    -lGLU
)
