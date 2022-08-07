#include <iostream>
#include <fstream>
using namespace std;


int main(){
    ifstream fileStream("test.cpp");
    string s;
    int start = -1;
    int count = 0 ;
    int lineNumber = 1;
    while(getline(fileStream,s)){
        for(int i = 0 ; i<s.size()-1;i++){
            if(s[i]=='/' && s[i+1]=='*'){
                    start = lineNumber;
                    count=1;
            }
            else if(s[i]=='*' && s[i+1]=='/'){
                count--;
                if(count<0){
                        /// Cannot have more than one multiline comment closing symbol
                        cout<<"Opening comment symbol not found for closing symbol at line "<<lineNumber<<endl;
                    count =0 ;
                }
            }
        }
        lineNumber++;
    }
    if(count==0){
        cout<<"No error"<<endl;
    } 
    else{
        cout<<"Comment not closed at line "<<start<<endl;
    }
}
