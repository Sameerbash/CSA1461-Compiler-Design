%{
#include <stdio.h>
%}
%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n;
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("sample1.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}	%{
int ln=0;
%}
%%
.* {ln++; fprintf(yyout,"\n%d:%s",ln,yytext);}
%%
int yywrap(){}
int main()
{
yyin=fopen("simple.txt","r");
yyout=fopen("out.txt","w");
yylex();
}
	%{
#include<stdio.h>
int n=0;
%}
%%
"/"[a-zA-Z0-9 \n\t]+"/" {n++;}
"//"[a-zA-Z0-9 \n\t]+"//" {n++;}
%%
int yywrap()
{}
int main()
{
printf("enter:");
yylex();
printf("no of comment lines:%d",n);
}
