%{
	int pc=0,dc=0;
%}
%%
printf {pc++;fprintf(yyout,"write");}
scanf {dc++;fprintf(yyout,"read");}
%%
int main(){
	yyin=fopen("a.txt","r");
	yyout=fopen("b.txt","w+");
	yylex();
	printf("No.of printf %d\nNo. of scanf %d\n",pc,dc);
	return 0;
}
int yywrap(){
	return 1;
}



