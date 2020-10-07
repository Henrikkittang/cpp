#include<iostream>
#include<vector>
#include<string>

using namespace std;

string newWord(const string& word, const string& currentWord, char letter){
    string newWord = "";
    for(int i = 0; i < word.length(); i++){
        if(letter == word[i]){
            newWord += letter;
        }else if(currentWord[i] != '_'){
            newWord += word[i];
        }else{
            newWord += '_';
        }
    }
    return newWord;
}

bool checkGuess(const string& word, char letter){
    for(int i = 0; i < word.length(); i++){
        if(letter == word[i]){
            return true;
        }
    }
    return false;
}

int main(){

    string word = "house";
    string currentWord = "_____";
    vector<char> wrongGuesses;

    char guess;
    while(true){
        cout << endl << "Guess a letter: ";
        cin >> guess;

        if(checkGuess(word, guess)){
            currentWord = newWord(word, currentWord, guess);
        }else{
            wrongGuesses.push_back(guess);
        }
        cout << currentWord << "  ";
        for(int i = 0; i < wrongGuesses.size(); i++){
            cout << wrongGuesses[i] << ", ";
        }
    }

    return 0;
}




