%{ 
int i =0,l=0,c=0;
%} 
%% 
[\n] {l++;}
[ ] {i++;}
[a-zA-Z0-9] {c++;}
%% 
int yywrap(){} 
int main() 
{ 
 printf("enter the string: ");
 yylex(); 
 printf("no of lines:%d\n",l);
 printf("no of words is:%d",i+l);
 printf("no of characters:%d",c);
}	%{
int cons = 0;
%}
digit [0-9]
%%
{digit}+"."{digit}+ { cons++; printf("%s is a floating-point constant\n", yytext); }
{digit}+ { cons++; printf("%s is an integer constant\n", yytext); }
.|\n { }
%%
int yywrap() {
}
int main() {
    printf("Enter the code:");
    yylex();
    printf("Number of Constants: %d\n", cons);
    return 0;
}	%{
int nmacro, nheader; 
%}
%%
"#define" {nmacro++;} 
"#include" {nheader++;} 
.|\n { }
%%
int yywrap() 
{ 
return 1; 
} 
int main() 
{ 
printf("enter the string:\n");
yylex(); 
printf("Number of macros defined = %d \n Number of header files included = %d\n",nmacro,nheader); 
}
