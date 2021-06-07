SFML_FULL := -l sfml-graphics -l sfml-window -l sfml-system -l sfml-audio -l sfml-network
SFML_GRAPHICS := -l sfml-graphics -l sfml-window -l sfml-system

DEBUG_PATH = build/debug/main
RELEASE_PATH =  build/release/main
BUILD_PATH = $(DEBUG_PATH)

SOURCE = src/main.cpp
	
CC      = g++
CFLAGS  = -std=c++17 -g

build: compile link
all: build run 

# debug:
# 	BUILD_PATH = $(DEBUG_PATH)
# 	CFLAGS += -g
# 	CFLAGS += Og
# release:
# 	BUILD_PATH = $(RELEASE_PATH)
# 	CFLAGS += -O3

# CC = g++
# CFLAGS += -g
# CFLAGS += -pg

compile: 
	@echo ">>> Compiling..."
	${CC} ${CFLAGS} -I include -c $(SOURCE) -o $(BUILD_PATH).o 
link: 
	@echo ">>> Linking..."
	${CC} ${CFLAGS}  $(BUILD_PATH).o -o $(BUILD_PATH).exe -L lib $(SFML_GRAPHICS)
run:
	@echo ">>> Running..."
	$(BUILD_PATH).exe
# profile: 
# 	compile
# 	link
# 	gprof $(BUILD_PATH).exe gmon.out > analysis.txt
	
clean:
	@echo ">>> Cleaning..."
	rm -f build/debug/*.o build/debug/*.exe
# 	del /Q /S build\\debug\\*.o 
# 	del /Q /S build\\debug\\*.exe 



