/**
 * This program takes asnd character in a-z or A-Z and 
 * shifts it 13 spaces foward in the alphabet
 * 
 * Nicole Matamoros
 * 09/26/2021
 */

%%

[a-z]   +13;
[A-Z]   +13;

%%

int main(int argc, char *argv[]){
    yylex();
    return 0;
}