SRC = src/main.cpp
OBJ = src/build/main.o
BIN = src/build/main

PYTHON_FLAGS = $(shell python3-config --includes)
PYTHON_LIBS = -lpython3.12
NUMPY_INCLUDE = -I/usr/lib/python3/dist-packages/numpy/core/include
INCLUDE_DIRS = -I./include $(NUMPY_INCLUDE)
WARNING_FLAGS = -Wno-deprecated-declarations

run: $(BIN)
	./$(BIN)

$(BIN): $(OBJ)
	g++ $(OBJ) -o $(BIN) $(PYTHON_LIBS)

$(OBJ): $(SRC) | src/build
	g++ -std=c++17 -O2 $(PYTHON_FLAGS) $(INCLUDE_DIRS) -c $(SRC) -o $(OBJ) $(WARNING_FLAGS)

src/build:
	mkdir -p src/build

clean:
	rm -f src/build/*.o $(BIN)

.PHONY: run clean
