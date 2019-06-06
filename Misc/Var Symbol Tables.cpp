#include <iostream>
#include <string>
#include <fstream>
#include <ctype.h>
using namespace std;

class table
{
public:
	bool is_datatype;
	bool is_empty;
	string data_type;
	string id;
	string size;
	table()
	{
		is_datatype=false;
		is_empty=true;
		size="0";
	}
};

int gen_hash(string k)
{
	int ascii=0;
	for(int i=0;i<k.length();i++)
		ascii+=(int)k[i];
	return ascii%997;
}

void populate(table a[])
{
	string data_types[]={"int","char","float","double","long","void"};
	for(int i=0;i<6;i++)
	{
		int key=gen_hash(data_types[i]);
		a[key].data_type=data_types[i];
		a[key].is_datatype=true;
		a[key].is_empty=false;
	}
}

int main()
{
	table hash_table[1000];
	populate(hash_table);
	ifstream f("abc.c");
	string line;
	int line_no=0;
	table prev;
	int prev_data_type=-1;
	while(getline(f,line))
	{
		line_no++;
		string token="";
		int hash_value=0;
		for(int i=0;i<line.length();i++)
		{
			if(isspace(line[i]) || line[i]==',' || line[i]==';' || line[i]=='=' || line[i]=='[')
			{
				if(token=="")
				{
					hash_value=0;
					continue;
				}
				if(hash_table[hash_value].is_datatype==true)
				{
					prev=hash_table[hash_value];
					prev_data_type=line_no;
				}
				if(line_no==prev_data_type)
				{
					if(hash_table[hash_value].is_empty==true)
					{
						hash_table[hash_value].is_empty=false;
						hash_table[hash_value].data_type=prev.data_type;
						hash_table[hash_value].id=token;
					}
				}
				token="";
				hash_value=0;
			}
			else
			{
				token=token+line[i];
				hash_value+=(int)line[i];
			}
		}
	}
	cout<<"Entries in the Symbol Table are"<<endl;
	cout<<endl<<"name 		type 		size"<<endl<<endl;
	for(int i=0;i<1000;i++)
	{
		if(hash_table[i].is_empty==false && hash_table[i].is_datatype==false)
		{
			cout<<hash_table[i].id<<" 		"<<hash_table[i].data_type<<endl;
		}
	}
	return 0;
}