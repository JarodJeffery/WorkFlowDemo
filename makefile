#CXX = g++
#CXXFLAGS = -std=c++11 -Wall

# List of object files
OBJS = test.o main.o

# Default targetgit add
all: main

main: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) main