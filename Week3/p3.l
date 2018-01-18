%{
	int a=0,b=0,c=0,d=0;
%}
%%
[0-9]+[.][0-9]+ a++;
-[0-9]+[.][0-9]+ b++;
[0-9]+ c++;
-[0-9]+ d++;
%%
int main(){
	yylex();
	printf("Pos Float %d\n Neg Float %d\n Pos Integer %d\n Neg Integer %d\n",a,b,c,d);
	return 0;
}
int yywrap(){
	return 1;
}


