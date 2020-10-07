#include<iostream>
#include<fstream>
#include<string>

std::string getContent(std::string& filename){
    std::fstream file;  
    std::string cont = "";

    file.open(filename + ".css", std::ios::in);  // opens file in read mode
    char ch;
    while(!file.eof()){
        file>>ch;
        cont += ch;
    }
    file.close();
    return cont;
}

void writeContent(std::string& content, std::string& filname){
    std::fstream file;  

    file.open(filname + ".min.css", std::ios::out);  // opens file in read mode
    file<<content;
    file.close();
    
}


std::string stripComments(std::string& content){
    bool commentFlag = false;
    int start;
    for(int i = 0; i < content.length(); i++){
        if(content[i] == '/'){
            if(commentFlag){
                content.erase(start, i-start+1);
                i = start;
                commentFlag = false;
            }else{
                start = i;
                commentFlag = true;
            }
        }
    }
    content.pop_back();
    return content;
}

int main(){
    
    std::string filename;
    std::cout << "File name: ";
    std::cin >> filename;

    std::string content = getContent(filename);
    content = stripComments(content);
    writeContent(content, filename);
}






