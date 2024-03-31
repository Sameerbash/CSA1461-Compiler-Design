%{
#include<stdio.h>
float op1=6,op2=7;
%}

%%
"+" {printf("sum =%lf",op1+op2);}
"-" {printf("diff=%lf",op1-op2);}
"*" {printf("mul=%lf",op1*op2);}
"/" {printf("div=%lf",op1/op2);}
. {printf("enter proper operator.");}
%%

int yywrap(){}
int main()
{
printf("enter number 1");
printf("enter number 2");
printf("Enter the Operator::");
yylex();
}	%{
#include <stdio.h>
%}

%%
^[aeiouAEIOU][a-zA-Z0-9_]*   printf("Accepted\n");
.                             printf("Rejected\n");
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}	%{
#include <stdio.h>
int max_length = 0;
int current_length = 0;
%}

%%
[a-zA-Z]+    { current_length = yyleng; if (current_length > max_length) max_length = current_length; }
.|\n         ;
%%

int main() {
    yylex();
    printf("Length of longest word: %d\n", max_length);
    return 0;
}

int yywrap() {
    return 1;
}
