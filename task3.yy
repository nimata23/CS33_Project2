/**
 * This program will strip an html file of all tags and comments
 * 
 * Date: 10/02/2021
 * Name: Nicole Matamoros
 */

using namespace std;

pTag	"<"p">"				// looks for <, followed by p, followed by >
oTag	"<"[^<>]+">"			// looks for <, followed by some number of non <> characters, followed by >

%%
pTag		{printf("\n");}		// if a p tag, add a new line
oTag					/**string all other tags and comments, this works bc they both start and end with <> 
						but you could also create an instance for comments */
[ \t\n]+				// strip whitespace
.		{printf("%s",yytext);}	// print the rest of the code

%%

int main(int argc, char *argv[]){
	if (argc > 1){
		yyin = fopen(argv[1],"r");	// if a file is passed in read it
	}
	else{
		yyin = stdin;			// otherwise, standard input
	}
	yylex();				// analyze
	
}
