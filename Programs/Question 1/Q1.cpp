#include <iostream>
#include <fstream>
#include <string>
using namespace std;
int main()
{
    ifstream infile("file.txt");
    string line;
    int line_number = 0;
    int line_error;
    int i;
    bool flag = false;
    while (getline(infile, line))
    {
        line_number++;
        if (!flag)
        {
            for (i = 0; i < line.length(); i++)
            {
                if (line[i] == '"')
                {
                    flag = true;
                    line_error = line_number;
                    break;
                }
            }
        }
        i++;
        if (flag)
        {
            for (; i < line.length(); i++)
            {
                if (line[i] == '"')
                {
                    flag = false;
                    break;
                }
            }
        }
    }
    if (!flag)
    {
        cout << "No error" << endl;
    }
    else
    {
        cout << "String opened at " << line_error << " but not closed" << endl;
    }
}