%{
%}
%%
[http://]+[www.]+[a-z]+".com" {printf("\n valid url\n");}
.+ {printf("\n invalid url\n");}
 %%
int yywrap()
{}

int main()
{
printf("\n enter the url:");
yylex();
}	%{
%}
%% 
[0-9][0-9]\/[0-1][0-9]\/[1-2][0-9]{3} { printf("valid");}
.+ { printf("invalid");}
%%

int yywrap(){}

int main()
{
yylex();
}  
	%{
#include<stdio.h>
%}
%%
[0-9]+|[0-9]*\.[0-9]+ { printf("\n%s is DIGIT", yytext);}
.+ { printf("\n%s is NOT A DIGIT",yytext);}
%%
int yywrap(){}
int main()
{
yylex();
}
