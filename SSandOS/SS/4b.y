%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token LETTER DIGIT
%%
S:LETTER
 |S DIGIT 
 |S LETTER
%%
main()
{
    printf("enter a variable:\t");
    yyparse();
    printf("this is a valid variable\n");
}
yyerror()
{
    printf("invalid variable\n");
    exit(0);
}

