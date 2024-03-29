package analizadores;
import java_cup.runtime.Symbol;

%%
%class lexercup
%type java_cup.runtime.Symbol
%cup
%full
%line
%unicode
%char
Digitos=[0-9]
espacio=[ \t]+
salto = [\n\r]+
stringval = [\"].+[\"]
comentario = [\'].+
id = [a-zA-Z|\_]+[a-zA-Z|\_|0-9]*

Imports = [I|i][M|m][P|p][O|o][R|r][T|t][S|s]
Public = [P|p][U|u][B|b][L|l][I|i][C|c]
System = [S|s][Y|y][S|s][T|t][E|e][M|m]
Module = [M|m][O|o][D|d][U|u][L|l][E|e]
Write = [W|w][R|r][I|i][T|t][E|e]
ReadLine = [R|r][E|e][A|a][D|d][L|l][I|i][N|n][E|e]
Sub = [S|s][U|u][B|b]
For = [F|f][O|o][R|r]
If = [I|i][F|f]
Dim = [D|d][I|i][M|m]
End = [E|e][N|n][D|d]
Integer = [I|i][N|n][T|t][E|e][G|g][E|e][R|r]
Boolean = [B|b][O|o][O|o][L|l][E|e][A|a][N|n]
String = [S|s][T|t][R|r][I|i][N|n][G|g]
Console = [C|c][O|o][N|n][S|s][O|o][L|l][E|e]
WriteLine = [W|w][R|r][I|i][T|t][E|e][L|l][I|i][N|n][E|e]
As = [A|a][S|s]
Do = [D|d][O|o]
While =[W|w][H|h][I|i][L|l][E|e]
Structure = [S|s][T|t][R|r][U|u][C|c][T|t][U|u][R|r][E|e]
Then = [T|t][H|h][E|e][N|n]
Else = [E|e][L|l][S|s][E|e]
ElseIf = [E|e][L|l][S|s][E|e][I|i][F|f]
Function = [F|f][U|u][N|n][C|c][T|t][I|i][O|o][N|n]
Next = [N|n][E|e][X|x][T|t]
Loop = [L|l][O|o][O|o][P|p]
Exit = [E|e][X|x][I|i][T|t]
To = [T|t][O|o]
True = [T|t][R|r][U|u][E|e]
False = [F|f][A|a][L|l][S|s][E|e]
Step = [S|s][T|t][E|e][P|p]
Main = [M|m][A|a][I|i][N|n]
ByVal = [B|b][Y|y][V|v][A|a][L|l]

%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%

/* Espacios en blanco */
{espacio} {}

/* Comentarios */
{ comentario } {return new Symbol(sym.tk_comentario, yychar, yyline, yytext());}

{salto} {return new Symbol(sym.tk_Linea, yychar, yyline, yytext());}

/* Declaracion de variable */ 
{ Dim } {return new Symbol(sym.tk_dim, yychar, yyline, yytext());}
{ As } {return new Symbol(sym.tk_as, yychar, yyline, yytext());}

/* Valor de string */
{ stringval } {return new Symbol(sym.tk_valorString, yychar, yyline, yytext());}

/* Tipos de datos */
{Integer} {return new Symbol(sym.tk_integer, yychar, yyline, yytext());}
{Boolean} {return new Symbol(sym.tk_boolean, yychar, yyline, yytext());}
{ByVal} {return new Symbol(sym.tk_byval, yychar, yyline, yytext());}
{String} {return new Symbol(sym.tk_String, yychar, yyline, yytext());}

/*Operadores Booleanos*/
{True} {return new Symbol(sym.tk_true, yychar, yyline, yytext());}
{False} {return new Symbol(sym.tk_false, yychar, yyline, yytext());}

/* Palabra reservada */
{ Main } {return new Symbol(sym.tk_main, yychar, yyline, yytext());}
{ If } {return new Symbol(sym.tk_if, yychar, yyline, yytext());}
{ Else } {return new Symbol(sym.tk_else, yychar, yyline, yytext());}
{ Do } {return new Symbol(sym.tk_do, yychar, yyline, yytext());}
{ While } {return new Symbol(sym.tk_while, yychar, yyline, yytext());}
{ For } {return new Symbol(sym.tk_for, yychar, yyline, yytext());}
{ To } {return new Symbol(sym.tk_to, yychar, yyline, yytext());}
{ Then } {return new Symbol(sym.tk_then, yychar, yyline, yytext());}
{ ElseIf } {return new Symbol(sym.tk_elseif, yychar, yyline, yytext());}
{ Loop } {return new Symbol(sym.tk_loop, yychar, yyline, yytext());}
{ End } {return new Symbol(sym.tk_end, yychar, yyline, yytext());}
{ Next } {return new Symbol(sym.tk_next, yychar, yyline, yytext());}
{ Function } {return new Symbol(sym.tk_function, yychar, yyline, yytext());}
{ Sub } {return new Symbol(sym.tk_sub, yychar, yyline, yytext());}
{ Exit } {return new Symbol(sym.tk_exit, yychar, yyline, yytext());}
{ Structure } {return new Symbol(sym.tk_structure, yychar, yyline, yytext());}
{ ReadLine } {return new Symbol(sym.tk_readline, yychar, yyline, yytext());}
{ Public } {return new Symbol(sym.tk_public, yychar, yyline, yytext());}
{ Console } {return new Symbol(sym.tk_cs, yychar, yyline, yytext());}
{ WriteLine } {return new Symbol(sym.tk_writeline, yychar, yyline, yytext());}
{ Module } {return new Symbol(sym.tk_module, yychar, yyline, yytext());}
{ Step } {return new Symbol(sym.tk_step, yychar, yyline, yytext());}

/* Operadores Aritmeticos*/
( "+" ) {return new Symbol(sym.tk_Suma, yychar, yyline, yytext());}
( "-" ) {return new Symbol(sym.tk_Resta, yychar, yyline, yytext());}
( "*" ) {return new Symbol(sym.tk_Multiplicacion, yychar, yyline, yytext());}
( "/" ) {return new Symbol(sym.tk_Division, yychar, yyline, yytext());}
( "%" ) {return new Symbol(sym.tk_Signomod, yychar, yyline, yytext());}
( "^" ) {return new Symbol(sym.tk_Potencia, yychar, yyline, yytext());}


/*Signos reservados*/
( "," ) {return new Symbol(sym.tk_Coma, yychar, yyline, yytext());}
( "." ) {return new Symbol(sym.tk_punto, yychar, yyline, yytext());}

/*Operadores Relacionales */
( ">" ) {return new Symbol(sym.tk_mayorque, yychar, yyline, yytext());}
( "<" ) {return new Symbol(sym.tk_menorque, yychar, yyline, yytext());}
( ">=" ) {return new Symbol(sym.tk_mayorigual, yychar, yyline, yytext());}
( "<=" ) {return new Symbol(sym.tk_menorigual, yychar, yyline, yytext());}
( "=" ) {return new Symbol(sym.tk_Igual, yychar, yyline, yytext());}

/* Parentesis*/
( "(" ) {return new Symbol(sym.tk_ParentesisA, yychar, yyline, yytext());}
( ")" ) {return new Symbol(sym.tk_ParentesisC, yychar, yyline, yytext());}

/* Identificador */
{id} {return new Symbol(sym.tk_Identificador, yychar, yyline, yytext());}

/* Numero */
{Digitos}+ {return new Symbol(sym.tk_Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {}

