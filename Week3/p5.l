%{
	int a=0;
%}
%%
[ ]and|for|nor|but|or|yet|so[ ] a=1;
%%
int main(){
	yylex();
	if(a==1) printf("Complex\n");
	else printf("Simple\n");
	return 0;
}
int yywrap(){
	return 1;
}


