%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B
%%
exp:A|B|A B
%%
main()
{
    printf("enter a string\n");
    yyparse();
    printf("valid expression\n");
}
yyerror()
{
    printf("invalid\n");
    exit(0);
}

