package Analizadores;
import static Analizadores.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
Digitos=[0-9]
espacio=[ \s\t\f]
stringval = [\"].+[\"]
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
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
%%

/* Espacios en blanco */
{espacio} {}
/* Comentarios */
( "'" ) {}

/* Declaracion de variable */ 
{ Dim } {return new Symbol(sym.tk_dim, yychar, yyline, yytext());}
{ As } {return new Symbol(sym.tk_as, yychar, yyline, yytext());}
/* Valor de string */
{ stringval } {return new Symbol(sym.tk_valorString, yychar, yyline, yytext());}

/* Tipos de datos */
( {Integer} | {Boolean} | ByVal ) {return new Symbol(sym.tk_tDato, yychar, yyline, yytext());}
/* Tipo de dato String */
{ String } {return new Symbol(sym.tk_String, yychar, yyline, yytext());}
/*Operadores Booleanos*/
({True} | {False}) {return new Symbol(sym.tk_booleano, yychar, yyline, yytext());}

/* Palabra reservada */
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
{ Until } {return new Symbol(sym.tk_until, yychar, yyline, yytext());}
{ Next } {return new Symbol(sym.tk_next, yychar, yyline, yytext());}
{ Function } {return new Symbol(sym.tk_function, yychar, yyline, yytext());}
{ Sub } {return new Symbol(sym.tk_sub, yychar, yyline, yytext());}
{ Exit } {return new Symbol(sym.tk_exit, yychar, yyline, yytext());}
{ Return } {return new Symbol(sym.tk_return, yychar, yyline, yytext());}
{ Structure } {return new Symbol(sym.tk_structure, yychar, yyline, yytext());}
{ Write } {return new Symbol(sym.tk_write, yychar, yyline, yytext());}
{ Read } {return new Symbol(sym.tk_read, yychar, yyline, yytext());}
{ And } {return new Symbol(sym.tk_and, yychar, yyline, yytext());}
{ Or } {return new Symbol(sym.tk_or, yychar, yyline, yytext());}
{ Not } {return new Symbol(sym.tk_not, yychar, yyline, yytext());}
{ Xor } {return new Symbol(sym.tk_xor, yychar, yyline, yytext());}
{ Public } {return new Symbol(sym.tk_public, yychar, yyline, yytext());}
{ Private } {return new Symbol(sym.tk_private, yychar, yyline, yytext());}
{ Imports } {return new Symbol(sym.tk_imports, yychar, yyline, yytext());}
{ System } {return new Symbol(sym.tk_sys, yychar, yyline, yytext());}
{ Console } {return new Symbol(sym.tk_cs, yychar, yyline, yytext());}
{ WriteLine } {return new Symbol(sym.tk_writeline, yychar, yyline, yytext());}
{ Module } {return new Symbol(sym.tk_module, yychar, yyline, yytext());}
{ Like } {return new Symbol(sym.tk_like, yychar, yyline, yytext());}
{ Mod } {return new Symbol(sym.tk_mod, yychar, yyline, yytext());}
{ Null } {return new Symbol(sym.tk_null, yychar, yyline, yytext());}

( Microsoft.VisuaLBasic ) {return new Symbol(sym.tk_lib, yychar, yyline, yytext());}

/* Operadores Aritmeticos*/
( "=" ) {return new Symbol(sym.tk_Igual, yychar, yyline, yytext());}
( "+" ) {return new Symbol(sym.tk_Suma, yychar, yyline, yytext());}
( "-" ) {return new Symbol(sym.tk_Resta, yychar, yyline, yytext());}
( "*" ) {return new Symbol(sym.tk_Multiplicacion, yychar, yyline, yytext());}
( "/" ) {return new Symbol(sym.tk_Division, yychar, yyline, yytext());}
( "," ) {return new Symbol(sym.tk_Coma, yychar, yyline, yytext());}

( "." ) {lexeme=yytext(); return tk_punto;}

/*Operadores Relacionales */
( ">" | "<" | ">=" | "<=" | "<>") {return new Symbol(sym.tk_opRelacional, yychar, yyline, yytext());}

/* Parentesis*/
( "(" ) {return new Symbol(sym.tk_ParentesisA, yychar, yyline, yytext());}
( ")" ) {return new Symbol(sym.tk_ParentesisC, yychar, yyline, yytext());}

/* Identificador */
{id} {return new Symbol(sym.tk_Identificador, yychar, yyline, yytext());}
/* Numero */
{Digitos}+ {return new Symbol(sym.tk_Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return ERROR;}

