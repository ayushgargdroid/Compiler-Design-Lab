%{
int linecount=0;
%}
%%
\n linecount++;
%%
int main()
{
	yylex();
	printf("There were %d lines\n",linecount);
	return 0;
}
int yywrap()
{
	return 1;
}
