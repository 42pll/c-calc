#include <iostream>
#include <vector>

using namespace std;

int main ()
{
    
    
    bool playing=true;
	char selection {};
	vector<int> vec;
	while(playing) {
		cout<<endl;
		cout<<"P - Print numbers"<<endl;
		cout<<"A - Add a number"<<endl;
		cout<<"M - Display the mean of the numbers"<<endl;
		cout<<"S - Display the smallest number"<<endl;
		cout<<"L - Display the largest number"<<endl;
		cout<< "Q - Quit"<<endl;
		cout<<endl;
		cin>>selection;
		
		if(selection=='p' || selection=='P') {
			if(vec.size()==0) { cout<<"[ ] The vector is empty, please try again"<<endl; }
			else {
				cout<<"[ ";
				for(unsigned int i=0; i<vec.size(); i++)  {cout<<vec.at(i)<< " ";}
				cout<<"]";
			}
		}
		else if(selection=='A' || selection=='a') {
			int j{};
			cout<<endl;
			cout<<"Enter a number to add"<<endl;
			cin>>j;
			vec.push_back(j);
			cout<<endl;
			cout<<j<< " was added to the vector"<<endl;
		}
        else if(selection=='m' || selection=='M') {
            double sum=0;
            for(unsigned i=0; i<vec.size(); i++) {
                
                sum = sum+vec.at(i);
            }
            cout<<"The mean was " << sum/vec.size();
            cout<<endl;
        }
        else if(selection=='L' || selection=='l') {
            int largest {INT_MIN};
            for(unsigned int i=0; i<vec.size(); i++) {
                if(vec.at(i)>largest) {
                    largest=vec.at(i);
                }
            }
            cout<<"The largest element was " << largest<<endl;
        }
        else if(selection=='S' || selection=='s') {
            int smallest {INT_MAX};
            for(unsigned int i=0; i<vec.size(); i++) {
                if(vec.at(i)>smallest) {
                    smallest=vec.at(i);
                }
            }
            cout <<"The smallest element was " << smallest<<endl;
        }
        
}
}
