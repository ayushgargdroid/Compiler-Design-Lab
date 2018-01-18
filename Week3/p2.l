%{
	int c_count=0,b_count=0,l_count=0;
%}
%%
[ ] b_count++;
[a-zA-z] c_count++;
\n l_count++;
%%
int main(){
	yylex();
	printf("Words %d Characters %d Blanks %d Lines %d\n",b_count+l_count,c_count,b_count,l_count);
	return 0;
}
int yywrap(){
	return 1;
}

