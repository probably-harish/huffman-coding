CXX = g++

CXXFLAGS = -std=c++11 -g -Wall -O2

SOURCES = src/compress.cpp src/uncompress.cpp
HEADERS = includes/HCTree.hpp

all : compress uncompress

compress: compress.o HCTree.hpp
	$(CXX) $(CXXFLAGS) -o compress compress.o 

uncompress: uncompress.o 
	$(CXX) $(CXXFLAGS) -o uncompress uncompress.o 

clean:
	rm -rf *.o compress uncompress

