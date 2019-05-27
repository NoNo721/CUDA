src:=$(wildcard *.o)
src:=$(filter-out nrutil.o, $(src))	#排除nrutil.o

all:magnon.exe

magnon.exe:nrutil.o src
	@nvcc -o magnon.exe *.o

nrutil.o:nrutil.cpp
	@g++ -c nrutil.cpp

src:*.cu
	@nvcc -c *.cu

clean:
	@rm -rf *.o magnon.exe

