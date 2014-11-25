%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S:E                    {printf("%d",$$);}
E:E'+'E                      {$$=$1+$3;}
 |E'-'E                     {$$=$1-$3;}
 |E'*'E                     {$$=$1*$3;}
 |E'/'E                       {if($3==0)
                              {printf("division by zero");
                        exit(0);
                       }
                        $$=$1/$3;
                       }
 |'('E')'                    {$$=$2;}                        
 | NUM;                  {$$=$1;}
%%
main()
{
    printf("enter the expression\n");
    yyparse();
}
yyerror()
{
    printf("error");
    exit(0);
}
