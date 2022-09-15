/**
 * This program implements a parser for clite. It prints a sequence of strings, one per line.
 *
 * Date: 10/02/2021
 * Name: Nicole Matamoros
 */
Integer		[0-9]+				// one or more digits
Float		[0-9]+.[0-9]+			// int . int
Keyword		(if|else|for|while|int|float)
Identifier	[a-zA-Z0-9_]+			// all legal identifier characters
Comparison	[==|<|>|<=|>=]
Operator	[+|-|*|/]
Comment		("//" | "/*")			// in quotes so it doesn't actually comment

%%
Comment		//Ignore this token
{Integer}	printf("Integer-<%s>", yytext);		// whenever you see a token, print out what token along with the
{Float}		printf("Float-<%s>", yytext);		// value (if applicable)
{Keyword}	printf("Keyword-<%s>", yytext);
{Identifier}	printf("Identifier-<%s>", yytext);
"="		printf("Assignment");
{Comparison}	printf("Comparison-<%s>", yytext);
{Operator}	printf("Operator-<%s>",	yytext);
"("		printf("Open-paren");
")"		printf("Close-paren");
"{"		printf("Open-bracket");
"}"		printf("Close-bracket");

%%

int main(int argc, char *argv[]){
	if (argc > 1){
		yyin = fopen(argv[1], "r");		// if a filename is given read the file
	}
	else{
		yyin = stdin;				// if not use standard input
	}
	yylex();					// analyze
}


