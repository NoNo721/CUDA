# compile

add_cuda:add.cu
	@nvcc -o add_cuda add.cu

clean:
	@rm -rf add_cuda
