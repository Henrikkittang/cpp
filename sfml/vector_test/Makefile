LIBS = -l sfml-graphics -l sfml-window -l sfml-system -l sfml-audio -l sfml-network

all: compile link

compile:
	g++ -I include -c src/main.cpp
link: 
	g++ main.o -o main -L lib $(LIBS)

