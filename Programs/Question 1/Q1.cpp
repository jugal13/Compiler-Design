#include <iostream>
#include <fstream>

using namespace std;
int main(){
    ifstream fileStream("file.txt");
    string s;
    int lineNumber = 1;
    while(getline(fileStream,s)){

        int count = 0;

        for(int i =0 ; i<s.size();i++){
            if(s[i]=='"'){
                count++;
            }
        }
        if(count%2 !=0){
            cout<<"String not closed on line "<<lineNumber<<endl;
        }
        else if(count>0){
            cout<<"Valid String on line "<<lineNumber<<endl;
        }
        lineNumber++;
    }

}
