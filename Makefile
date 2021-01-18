SRC_PATH=src/
BIN_PATH=bin/
OBJ_PATH=obj/

CC=g++
LD_FLAGS=-lstdc++
CC_FLAGS=-Wall -c

SOURCES=Animation.cpp ArgsParser.cpp Reader.cpp SequenceGenerator.cpp main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=ascii-gif

all: $(BIN_PATH)$(EXECUTABLE)

$(BIN_PATH)$(EXECUTABLE): $(OBJ_PATH)$(OBJECTS)
	$(CC) $(OBJ_PATH)$(OBJECTS) -o $(BIN_PATH)$(EXECUTABLE) $(LD_FLAGS)

$(OBJ_PATH)%.o: $(SRC_PATH)%.cpp
	$(CC) $(CC_FLAGS) $< -o $@

clean:
	rm -Rf $(OBJ_PATH)* $(BIN_PATH)*
