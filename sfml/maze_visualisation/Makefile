SFML_FULL = -l sfml-graphics -l sfml-window -l sfml-system -l sfml-audio -l sfml-network
SFML_GRAPHICS = -l sfml-graphics -l sfml-window -l sfml-system

build: compile link
all: build run

compile:
	g++ -I include -c src/main.cpp
link: 
	g++ main.o -o main -L lib $(SFML_GRAPHICS)
run:
	main.exe
