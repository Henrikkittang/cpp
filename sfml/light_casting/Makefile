

SFML_FULL := -l sfml-graphics -l sfml-window -l sfml-system -l sfml-audio -l sfml-network
SFML_GRAPHICS := -l sfml-graphics -l sfml-window -l sfml-system

DEBUG_PATH   = build/debug/main
RELEASE_PATH =  build/release/main
SOURCE 	     = src/main.cpp

# Flags for all modes
CC        = g++
CPPFLAGS  = -std=c++17

DEBUG_FLAGS   = -g 
RELEASE_FLAGS = -O3


# //////////////////////////////////
#            Debug
# //////////////////////////////////

build-debug: compile-debug link-debug
all-debug: build-debug run-debug

compile-debug:
	@echo ">>> Compiling debug..."
	${CC} ${CPPFLAGS} $(DEBUG_FLAGS) -I include -c $(SOURCE) -o $(DEBUG_PATH).o 
link-debug:
	@echo ">>> Linking debug..."
	${CC} ${CPPFLAGS} $(DEBUG_FLAGS)  $(DEBUG_PATH).o -o $(DEBUG_PATH).exe -L lib $(SFML_GRAPHICS)
run-debug:
	@echo ">>> Running debug..."
	$(DEBUG_PATH).exe
	

clean-debug:
	@echo ">>> Cleaning..."
	rm -f build/debug/*.o build/debug/*.exe

assembly-debug:
	${CC} ${CPPFLAGS} $(DEBUG_FLAGS) -S -I include -c $(SOURCE) -o main_debug.s

profile-debug:
	@echo ">>> Compiling debug..."
	${CC} ${CPPFLAGS} $(DEBUG_FLAGS) -pg -I include -c $(SOURCE) -o $(DEBUG_PATH).o  
	
	@echo ">>> Linking debug..."
	${CC} ${CPPFLAGS} $(DEBUG_FLAGS) -pg $(DEBUG_PATH).o -o $(DEBUG_PATH).exe -L lib $(SFML_GRAPHICS)

	@echo ">>> Profiling debug..."
	$(DEBUG_PATH).exe 

	gprof $(DEBUG_PATH).exe gmon.out > analysis.txt   



# //////////////////////////////////
#            Release
# //////////////////////////////////

build-release: compile-release link-release
all-release: build-release run-release

assembly-release:
	${CC} ${CPPFLAGS} $(RELEASE_FLAGS) -S -I include -c $(SOURCE) -o main_release.s

compile-release:
	@echo ">>> Compiling release..."
	${CC} ${CPPFLAGS} $(RELEASE_FLAGS) -I include -c $(SOURCE) -o $(RELEASE_PATH).o 
link-release:
	@echo ">>> Linking release..."
	${CC} ${CPPFLAGS} $(RELEASE_FLAGS)  $(RELEASE_PATH).o -o $(RELEASE_PATH).exe -L lib $(SFML_GRAPHICS)
run-release:
	@echo ">>> Running release..."
	$(RELEASE_PATH).exe

clean-release:
	@echo ">>> Cleaning release..."
	rm -f build/release/*.o build/release/*.exe

profile-release:
	@echo ">>> Compiling release..."
	${CC} ${CPPFLAGS} $(RELEASE_FLAGS) -pg -I include -c $(SOURCE) -o $(RELEASE_PATH).o
	
	@echo ">>> Linking release..."
	${CC} ${CPPFLAGS} $(RELEASE_FLAGS) -pg $(RELEASE_PATH).o -o $(RELEASE_PATH).exe -L lib $(SFML_GRAPHICS)
	
	@echo ">>> Profiling debug..."
	$(RELEASE_PATH).exe 

	@echo ">>> Profiling release..."
	gprof $(RELEASE_PATH).exe gmon.out > analysis.txt
	



