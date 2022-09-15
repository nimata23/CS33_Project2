/**
 * This program takes asnd character in a-z or A-Z and 
 * shifts it 13 spaces foward in the alphabet
 * 
 * Nicole Matamoros
 * 09/26/2021
 */

    int hold;
char([A-Z]|[a-z])

%%

{char}  {hold = "yytext" + 13;
         (printf("%c",hold));}

%%
int yywrap() {return 1;}

int main(int argc, char *argv[]){
    if (argc > 1)
        yyin = fopen(argv[1], "r");
    yylex();
    
    return 0;
}