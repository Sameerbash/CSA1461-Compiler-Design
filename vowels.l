%{
%}
%%

[0-9][0-9]{9} {printf("\n mobile number valid\n");}
.+ {printf("\n mobile number invalid\n");}
%%
int yywap()
{}
int main()
{
printf("\n enter the mobile number:");
yylex();
}	%{
#include<stdio.h>
%}
%%
bool|int|float|main|printf|int|char|float|double|void|if|while|for|do|main|return|else|elseif {printf("\n%s is a Keyword",yytext);}
[-,+]?[0-9]+ {printf("\n%s is a numbers",yytext);}
[,.;]+ {printf("\n%s is a Punctuation Chars",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
["a-zA-Z"]+ {printf("\n%s is a string",yytext);}
[!%^&-+*()]+ {printf("\n%s is a mathematical operator",yytext);}

%%
int yywrap()
{
}
int main()
{
yylex();
}	%{
int vcount=0;
int ccount=0;
%}
%%
[aeiouAEIOU] {vcount++;}
[a-z,A-Z] {ccount++;}
%%
int yywrap(){}
int main()
{
printf("enter the string with vowels and consonants:");
yylex();
printf("\n no of vowels ::%d \n",vcount);
printf("\n no of consonants ::%d \n",ccount);
}
