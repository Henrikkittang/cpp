#pragma once
#include<string>
#include<iostream>
#include<chrono>
#include<fstream>

class Benchmark{
private:
    std::string filename = "";
    unsigned __int64 s = 0;
    unsigned __int64 e = 0;

    

public:
    Benchmark(std::string fn){
        filename = fn;

        std::fstream file;    
        file.open(filename, std::ios::out);
        file<< ""; 
        file.close();
    }

    void start(){
        s = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
    }

    void stop(){
        e = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
        
        std::fstream file;    
 
        file.open(filename, std::ios::in);

        std::string content;
        std::string line;
        while (std::getline(file, line)){
            content += line + "\n";
        }

        file.close();

        file.open(filename, std::ios::out);
        file<< content << (e-s) << "\n"; 
        file.close();
    }   
};








