package analizadores;
import static analizadores.Tokens.*;
%%
%class Lexer
%type Tokens
Digitos=[0-9]
espacio=[ \s\t\f]
stringval = [\"].+[\"]
comentario = [\'].+
id = [a-zA-Z|\_]+[a-zA-Z|\_|0-9]*

Imports = [I|i][M|m][P|p][O|o][R|r][T|t][S|s]
Public = [P|p][U|u][B|b][L|l][I|i][C|c]
System = [S|s][Y|y][S|s][T|t][E|e][M|m]
Module = [M|m][O|o][D|d][U|u][L|l][E|e]
Write = [W|w][R|r][I|i][T|t][E|e]
Read = [R|r][E|e][A|a][D|d]
Sub = [S|u][U|u][B|b]
For = [F|f][O|o][R|r]
If = [I|i][F|f]
Dim = [D|d][I|i][M|m]
End = [E|e][N|n][D|d]
Integer = [I|i][N|n][T|t][E|e][G|g][E|e][R|r]
Boolean = [B|b][O|o][O|o][L|l][E|e][A|a][N|n]
String = [S|s][T|t][R|r][I|i][N|n][G|g]|
System = [S|s][Y|y][S|s][T|t][E|e][M|m]
Console = [C|c][O|o][N|n][S|s][O|o][L|l][E|e]
WriteLine = [W|w][R|r][I|i][T|t][E|e][L|l][I|i][N|n][E|e]
As = [A|a][S|s]
Do = [D|d][O|o]
While =[W|w][H|h][I|i][L|l][E|e]
Structure = [S|s][T|t][R|r][U|u][C|c][T|t]
Then = [T|t][H|h][E|e][N|n]
Else = [E|e][L|l][S|s][E|e]
ElseIf = [E|e][L|l][S|s][E|e][I|i][F|f]
Xor = [X|x][O|o][R|r]
Not = [N|n][O|o][T|t]
Function = [F|f][U|u][N|n][C|c][T|t][I|i][O|o][N|n]
Return = [R|r][E|e][T|t][U|u][R|r][N|n]
Next = [N|n][E|e][X|x][T|t]
Private = [P|p][R|r][I|i][V|v][A|a][T|t][E|e]
Loop = [L|l][O|o][O|o][P|p]
Exit = [E|e][X|x][I|i][T|t]
Until = [U|u][N|n][T|t][I|i][L|l]
To = [T|t][O|o]
And = [A|a][N|n][D|d]
Or = [O|o][R|r]
True = [T|t][R|r][U|u][E|e]
False = [F|f][A|a][L|l][S|s][E|e]
Like = [L|l][I|i][K|k][E|e]
Mod = [M|m][O|o][D|d]
Null = [N|n][U|u][L|l][L|l]

%{
    public String lexeme;
%}
%%

/* Espacios en blanco */
{espacio} {}
/* Comentarios */
{ comentario } {lexeme=yytext(); return tk_comentario;}
/* Salto de linea */
( "\n" ) {return tk_Linea;}

/* Valor de string */
{ stringval } {lexeme=yytext(); return tk_valorString;}
/* Declaracion de variable */ 
{ Dim } {lexeme=yytext(); return tk_dim;}
{ As } {lexeme=yytext(); return tk_as;}

/* Tipos de datos */
( {Integer} | {Boolean} | ByVal ) {lexeme=yytext(); return tk_tDato;}
/* Tipo de dato String */
{ String } {lexeme=yytext(); return tk_String;}
/*Operadores Booleanos*/
({True} | {False}) {lexeme = yytext(); return tk_booleano;}

/* Palabra reservada */
{ If } {lexeme=yytext(); return tk_if;}
{ Else } {lexeme=yytext(); return tk_else;}
{ Do } {lexeme=yytext(); return tk_do;}
{ While } {lexeme=yytext(); return tk_while;}
{ For } {lexeme=yytext(); return tk_for;}
{ To } {lexeme=yytext(); return tk_to;}
{ Then } {lexeme=yytext(); return tk_then;}
{ ElseIf } {lexeme=yytext(); return tk_elseif;}
{ Loop } {lexeme=yytext(); return tk_loop;}
{ End } {lexeme=yytext(); return tk_end;}
{ Until } {lexeme=yytext(); return tk_until;}
{ Next } {lexeme=yytext(); return tk_next;}
{ Function } {lexeme=yytext(); return tk_function;}
{ Sub } {lexeme=yytext(); return tk_sub;}
{ Exit } {lexeme=yytext(); return tk_exit;}
{ Return } {lexeme=yytext(); return tk_return;}
{ Structure } {lexeme=yytext(); return tk_structure;}
{ Write } {lexeme=yytext(); return tk_write;}
{ Read } {lexeme=yytext(); return tk_read;}
{ And } {lexeme=yytext(); return tk_and;}
{ Or } {lexeme=yytext(); return tk_or;}
{ Not } {lexeme=yytext(); return tk_not;}
{ Xor } {lexeme=yytext(); return tk_xor;}
{ Public } {lexeme=yytext(); return tk_public;}
{ Private } {lexeme=yytext(); return tk_private;}
{ Imports } {lexeme=yytext(); return tk_imports;}
{ System } {lexeme=yytext(); return tk_sys;}
{ Console } {lexeme=yytext(); return tk_cs;}
{ WriteLine } {lexeme=yytext(); return tk_writeline;}
{ Module } {lexeme=yytext(); return tk_module;}
{ Like } {lexeme=yytext(); return tk_like;}
{ Mod } {lexeme=yytext(); return tk_mod;}
{ Null } {lexeme=yytext(); return tk_null;}

( Microsoft.VisuaLBasic ) {lexeme=yytext(); return tk_lib;}

/* Operadores Aritmeticos*/
( "=" ) {lexeme=yytext(); return tk_Igual;}
( "+" ) {lexeme=yytext(); return tk_Suma;}
( "-" ) {lexeme=yytext(); return tk_Resta;}
( "*" ) {lexeme=yytext(); return tk_Multiplicacion;}
( "/" ) {lexeme=yytext(); return tk_Division;}
( "," ) {lexeme=yytext(); return tk_Coma;}

( "." ) {lexeme=yytext(); return tk_punto;}

/*Operadores Relacionales */
( ">" | "<" | ">=" | "<=" | "<>") {lexeme = yytext(); return tk_opRelacional;}

/* Parentesis*/
( "(" ) {lexeme=yytext(); return tk_ParentesisA;}
( ")" ) {lexeme=yytext(); return tk_ParentesisC;}

/* Identificador */
{id} {lexeme=yytext(); return tk_Identificador;}
/* Numero */
{Digitos}+ {lexeme=yytext(); return tk_Numero;}

/* Error de analisis */
 . {return ERROR;}
