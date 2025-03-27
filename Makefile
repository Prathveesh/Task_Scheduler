# Compiler
CXX = g++

# Compiler Flags
CXXFLAGS = -Wall -Wextra -std=c++17 -pthread

# Directories
SRC_DIR = src
BUILD_DIR = build
INCLUDE_DIR = include

# Source and Object Files
SRCS = $(wildcard $(SRC_DIR)/*.cpp)   # Finds all .cpp files
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SRCS))  # Converts .cpp to .o

# Output Executable (Renamed to main)
TARGET = $(BUILD_DIR)/main

# Default Rule
all: build_dirs $(TARGET)

# Create build directory if not exists
build_dirs:
	mkdir -p $(BUILD_DIR)

# Compilation Rule (Linking all object files into main binary)
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Object File Compilation Rule (Compiling each .cpp into .o)
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -I$(INCLUDE_DIR) -c $< -o $@

# Clean Build Directory
clean:
	rm -rf $(BUILD_DIR)/*
