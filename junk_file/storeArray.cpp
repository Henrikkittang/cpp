#include<iostream>
#include<fstream>
#include<vector>
#include<string>
#include <sstream>


class StoreArray{
private:
    std::string content;
    std::vector<std::vector<int>> arr = {};
    std::string filename;


    void writeFile(std::string cont){
        std::fstream file;    // initilize file-handler class
        file.open(filename, std::ios::out);  // opens file in write mode
        
        file<<cont;
        file.close();         // important!
    }

public:
    StoreArray(std::string fn): filename(fn + ".txt"){
        std::fstream file;    
        file.open(filename, std::ios::in);

        char curChar;
        while(!file.eof()){
            file>>curChar;
            content += curChar;
        }
        file.close();
    }

    std::vector<std::vector<int>>  makeArray(){
        content.erase(content.begin());

        int yIdx = -1;
        for(int i = 0; i < content.size(); i++){
            if(content[i] == '['){
                arr.push_back({});
                yIdx++;
            }else if((int)content[i] >= 48 && (int)content[i] <= 57){
                int newVal = (int)content[i] - 48;
                arr[yIdx].push_back(newVal);
            }
        }
        return arr;
    }

    void saveArray(std::vector<std::vector<int>> newArr){
        std::string newContent = "[    \n";
        for(int i = 0; i < newArr.size(); i++){
            newContent += "    [";
            for(int j = 0; j < newArr[i].size(); j++){
                newContent +=  char(newArr[i][j] + 48);
                if(j != newArr[i].size() - 1) newContent += ", ";
            }
            newContent += "]\n";
        }
        newContent += "]";

        writeFile(newContent);

    }
};

int main(){
    
    StoreArray store("array");
    auto  arr = store.makeArray();

    store.saveArray(arr);

    return 0;
}


