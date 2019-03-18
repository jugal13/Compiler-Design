#include <iostream>
#include <fstream>
#include <string>
using namespace std;
int main()
{
    ifstream infile("test.cpp");
    string line;
    int line_number = 0;
    int line_error;
    int i;
    bool flag = false;
    while (getline(infile,line)) 
    {
        line_number++;
        if (!flag)
        {
            for (i=0; i<line.length(); i+=2)
            {
                if(line[i]=='/' && line[i+1]=='*')
                {
                    flag=true;
                    line_error=line_number;
                    break;
                }
            }
        }
        if (flag)
        {
            for (;i<line.length(); i+=2)
            {
                if(line[i]=='*' && line[i+1]=='/')
                {
                    flag=false;
                    break;
                }
            }
        }
    }
    if(!flag)
    {
        cout<<"No error"<<endl;
    }
    else
    {
        cout<<"Multiline comment started at "<<line_error<<" but not closed"<<endl;
    }
}