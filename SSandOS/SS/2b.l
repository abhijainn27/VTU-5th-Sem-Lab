%{
#include<stdio.h>
int simp=0,comp=0;
%}
conj  [ ]+("and"|"or"|"but")[ ]+
str   [a-zA-Z0-9]
%x P Q R
%%
^{conj} {BEGIN R;}
<R>.*\n  {printf("invalid sentence\n");
          exit(0);
	  }
{str}*  {BEGIN P;}
<P>{conj}  {BEGIN Q;comp=1;}
<P>{conj}+  {BEGIN R;}
<P>{conj}+$  {BEGIN R;}
<P>[ ]*{str}*     ;
<P>\n  {if(comp==0) 
	simp=1;}
<Q>{str}* {BEGIN P;}
%%
main()
{
 printf("enter the statement\n");
yylex();
if(simp==1)
{
 printf("simple sentence\n");
}
else
{
 printf("compound sentence\n");
}
}
