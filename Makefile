SRC_PATH=src/
BIN_PATH=bin/
OBJ_PATH=obj/

CC=g++
LD_FLAGS=-lstdc++fs
CC_FLAGS=-Wall -c

SOURCES=$(wildcard $(SRC_PATH)*.cpp)
OBJECTS=$(SOURCES:$(SRC_PATH)%.cpp=$(OBJ_PATH)%.o)
EXECUTABLE=ascii-gif

all: $(BIN_PATH)$(EXECUTABLE)
	mkdir $(BIN_PATH)tmp $(BIN_PATH)tmp/jpg $(BIN_PATH)tmp/txt

$(BIN_PATH)$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(BIN_PATH)$(EXECUTABLE) $(LD_FLAGS)

$(OBJ_PATH)%.o: $(SRC_PATH)%.cpp
	$(CC) $(CC_FLAGS) $< -o $@

clean:
	rm -Rf $(OBJ_PATH)* $(BIN_PATH)*
