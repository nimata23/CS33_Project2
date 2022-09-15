/**
 * This place a game where the computer tries to match the
 * direction picked by the user.
 * 
 * Date: 10/4/2021
 * Name: Nicole Matamoros
 */

#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

int main(){
    int comp_choice;
    string comp, guest_choice;
    string options[4] = {"right","left","up","down"};

    comp_choice = rand() % 4 + 1;
    cout<<"Lets play a game.";
    cout<<"\nYou will pick a direction: right, left, up, or down.";
    cout<<"\nIf I correctly guess what direction you chose I win.\n Otherwise, you win.";
    cout<<"\nIf you want to stop playing enter 'end' instead of a direction.";
    cout<<"\nPick your direction (right, left, up, down): ";
    cin>>guest_choice;
    comp = options[comp_choice-1];
    while (guest_choice != "end"){
        if (comp == guest_choice){
            cout<<"\nGot Ya! I win. :]";
        }
        else{
            cout<<"\nYou win... this time.";
        }
        cout<<"\nPick your direction (right, left, up, down): ";
        comp_choice = rand()% 4 + 1;
        comp = options[comp_choice-1];
        cin>>guest_choice;
    }
    cout<<"\nThe game has ended, thanks for playing. :]";
    return 0;

}