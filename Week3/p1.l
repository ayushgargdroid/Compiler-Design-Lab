%{
	int v_count=0,c_count=0;
%}
%%
[aeiouAEIOU] v_count++;
[a-zA-z] c_count++;
%%
int main(){
	yylex();
	printf("Vowels %d Consonants %d\n",v_count,c_count);
	return 0;
}
int yywrap(){
	return 1;
}
