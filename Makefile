SRC_DIR=src
BIN_DIR=bin
OBJ_DIR=obj

TMP_DIRS=bin/tmp bin/tmp/jpg bin/tmp/txt

CC=g++
LD_FLAGS=-lstdc++fs
CC_FLAGS=-Wall -c

SOURCES=$(wildcard $(SRC_DIR)/*.cpp)
OBJECTS=$(SOURCES:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
EXECUTABLE=ascii-gif

all: $(OBJ_DIR) $(BIN_DIR) $(TMP_DIRS) $(BIN_DIR)/$(EXECUTABLE)	

$(BIN_DIR)/$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(BIN_DIR)/$(EXECUTABLE) $(LD_FLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CC) $(CC_FLAGS) $< -o $@


$(TMP_DIRS):
	mkdir $(TMP_DIRS)
	
$(BIN_DIR):
	mkdir $(BIN_DIR)

$(OBJ_DIR):
	mkdir $(OBJ_DIR)


clean:
	rm -Rf $(OBJ_DIR)/* $(BIN_DIR)/$(EXECUTABLE)
