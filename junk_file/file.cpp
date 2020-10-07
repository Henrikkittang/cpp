#include<iostream>
#include<fstream>

using namespace std;

int main(){
    fstream file;    // initilize file-handler class
    file.open("file.txt", ios::out);  // opens file in write mode

    file<<"Hello world";
    file.close();         // important!

    // ---------------

    file.open("file.txt", ios::in);  // opens file in read mode
    file>>noskipws;   // disable skiping whitespace (and newlines?)

    char ch;
    cout << "File content: ";
    while(!file.eof()){
        file>>ch;
        cout<<ch;
    }

    file.close();


    return 0;
}