/**
*Hello World: replace "blah" with "hello world"
*/

%%

blah printf("hello world");

%%

int mian (int argc, char *argv[]){
    yylex();
    return 0;
}