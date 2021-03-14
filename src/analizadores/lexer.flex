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
Sub = [S|s][U|u][B|b]
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
Step = [S|s][T|t][E|e][P|p]
Main = [M|m][A|a][I|i][N|n]
%{
    public String lexeme;
    int jline = 0;
%}
%%


/* Espacios en blanco */
{espacio} {}

/* Comentarios */
{ comentario } {jline = 0; lexeme=yytext(); return tk_comentario;}

/* Salto de linea */
( "\n" ) {jline++;
        if(jline == 1){
            return tk_Linea;
        }
    }

/* Valor de string */
{ stringval } { jline = 0; lexeme=yytext(); return tk_valorString;}
/* Declaracion de variable */ 
{ Dim } { jline = 0; lexeme=yytext(); return tk_dim;}
{ As } { jline = 0; lexeme=yytext(); return tk_as;}

/* Tipos de datos */
/*( {Integer} | {Boolean} | {String} | ByVal ) {jline = 0; lexeme=yytext(); return tk_tDato;}*/
{Integer} { jline = 0; lexeme=yytext(); return tk_integer;}
{Boolean} { jline = 0; lexeme=yytext(); return tk_boolean;}
(ByVal) { jline = 0; lexeme=yytext(); return tk_byval;}
{ String } { jline = 0; lexeme=yytext(); return tk_String;}

/*Operadores Booleanos*/
/*({True} | {False}) {jline = 0; lexeme = yytext(); return tk_opBoolean;}*/
{True} { jline = 0; lexeme = yytext(); return tk_true;}
{False} { jline = 0; lexeme = yytext(); return tk_false;}


/* Palabra reservada */
{ Main } { jline = 0; lexeme=yytext(); return tk_main;}
{ If } { jline = 0; lexeme=yytext(); return tk_if;}
{ Else } { jline = 0; lexeme=yytext(); return tk_else;}
{ Do } { jline = 0; lexeme=yytext(); return tk_do;}
{ While } { jline = 0; lexeme=yytext(); return tk_while;}
{ For } { jline = 0; lexeme=yytext(); return tk_for;}
{ To } { jline = 0; lexeme=yytext(); return tk_to;}
{ Then } { jline = 0; lexeme=yytext(); return tk_then;}
{ ElseIf } { jline = 0; lexeme=yytext(); return tk_elseif;}
{ Loop } { jline = 0; lexeme=yytext(); return tk_loop;}
{ End } { jline = 0; lexeme=yytext(); return tk_end;}
{ Until } { jline = 0; lexeme=yytext(); return tk_until;}
{ Next } { jline = 0; lexeme=yytext(); return tk_next;}
{ Function } { jline = 0; lexeme=yytext(); return tk_function;}
{ Sub } { jline = 0; lexeme=yytext(); return tk_sub;}
{ Exit } { jline = 0; lexeme=yytext(); return tk_exit;}
{ Return } { jline = 0; lexeme=yytext(); return tk_return;}
{ Structure } { jline = 0; lexeme=yytext(); return tk_structure;}
{ Write } { jline = 0; lexeme=yytext(); return tk_write;}
{ Read } { jline = 0; lexeme=yytext(); return tk_read;}
{ And } { jline = 0; lexeme=yytext(); return tk_and;}
{ Or } { jline = 0; lexeme=yytext(); return tk_or;}
{ Not } { jline = 0; lexeme=yytext(); return tk_not;}
{ Xor } { jline = 0; lexeme=yytext(); return tk_xor;}
{ Public } { jline = 0; lexeme=yytext(); return tk_public;}
{ System } { jline = 0; lexeme=yytext(); return tk_sys;}
{ Console } { jline = 0; lexeme=yytext(); return tk_cs;}
{ WriteLine } { jline = 0; lexeme=yytext(); return tk_writeline;}
{ Module } { jline = 0; lexeme=yytext(); return tk_module;}
{ Like } { jline = 0; lexeme=yytext(); return tk_like;}
{ Mod } { jline = 0; lexeme=yytext(); return tk_mod;}
{ Null } { jline = 0; lexeme=yytext(); return tk_null;}
{ Step } { jline = 0; lexeme=yytext(); return tk_step;}

/* Operadores Aritmeticos*/
/*( "+" | "-" | "*" | "/" ) {jline = 0; lexeme=yytext(); return tk_opAritmeticos;}*/
( "+" ) { jline = 0; lexeme=yytext(); return tk_Suma;}
( "-" ) { jline = 0; lexeme=yytext(); return tk_Resta;}
( "*" ) { jline = 0; lexeme=yytext(); return tk_Multiplicacion;}
( "/" ) { jline = 0; lexeme=yytext(); return tk_Division;}

/*Signos reservados*/
( "," ) { jline = 0; lexeme=yytext(); return tk_Coma;}
( "&" ) { jline = 0; lexeme=yytext(); return tk_ampersant;}
( "." ) { jline = 0; lexeme=yytext(); return tk_punto;}

/*Operadores Relacionales */
/*( ">" | "<" | ">=" | "<=" | "=") { jline = 0; lexeme = yytext(); return tk_opRelacional;}*/
( ">" ) { jline = 0; lexeme = yytext(); return tk_mayorque;}
( "<" ) { jline = 0; lexeme = yytext(); return tk_menorque;}
( ">=" ) { jline = 0; lexeme = yytext(); return tk_mayorigual;}
( "<=" ) { jline = 0; lexeme = yytext(); return tk_menorigual;}
( "=" ) { jline = 0; lexeme=yytext(); return tk_Igual;}

/* Parentesis*/
( "(" ) { jline = 0; lexeme=yytext(); return tk_ParentesisA;}
( ")" ) { jline = 0; lexeme=yytext(); return tk_ParentesisC;}

/* Identificador */
{id} { jline = 0; lexeme=yytext(); return tk_Identificador;}
/* Numero */
{Digitos}+ { jline = 0; lexeme=yytext(); return tk_Numero;}

/* Error de analisis */
 . { jline = 0; return ERROR;}
