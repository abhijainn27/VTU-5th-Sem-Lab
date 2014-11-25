%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B
%%
exp:A B;
%%
main()
{
    printf("enter a string\n");
    yyparse();
    printf("valid string\n");
}
yyerror()
{
    printf("invalid\n");
    exit(0);
}

