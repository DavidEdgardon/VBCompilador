package Analizadores;
import static Analizadores.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
Letras=[a-zA-Z]
Digitos=[0-9]
linebreak = [\r|\n|\r\n]+
espacio= {linebreak} | [ \s\t\f]

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
/* Comillas */
( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/* Declaracion de variable */ 
( Dim ) {return new Symbol(sym.dim, yychar, yyline, yytext());}
( As ) {return new Symbol(sym.as, yychar, yyline, yytext());}

/* Tipos de datos */
( Integer | Boolean | ByVal ) {return new Symbol(sym.T_dato, yychar, yyline, yytext());}
/* Tipo de dato String */
( String ) {return new Symbol(sym.Cadena, yychar, yyline, yytext());}
/*Operadores Booleanos*/
(True | False) {return new Symbol(sym.Op_booleano, yychar, yyline, yytext());}

/* Palabra reservada */
( If ) {return new Symbol(sym.reserved_if, yychar, yyline, yytext());}
( Else ) {return new Symbol(sym.reserved_else, yychar, yyline, yytext());}
( Do ) {return new Symbol(sym.reserved_do, yychar, yyline, yytext());}
( While ) {return new Symbol(sym.reserved_while, yychar, yyline, yytext());;}
( For ) {return new Symbol(sym.reserved_for, yychar, yyline, yytext());}
( To ) {return new Symbol(sym.reserved_to, yychar, yyline, yytext());}
( Then ) {return new Symbol(sym.reserved_then, yychar, yyline, yytext());}
( ElseIf ) {return new Symbol(sym.reserved_elseif, yychar, yyline, yytext());}
( Loop ) {return new Symbol(sym.reserved_loop, yychar, yyline, yytext());}
( End ) {return new Symbol(sym.reserved_end, yychar, yyline, yytext());}
( Until ) {return new Symbol(sym.reserved_until, yychar, yyline, yytext());}
( Next ) {return new Symbol(sym.reserved_next, yychar, yyline, yytext());}
( Function ) {return new Symbol(sym.reserved_function, yychar, yyline, yytext());}
( Sub ) {return new Symbol(sym.reserved_sub, yychar, yyline, yytext());}
( Exit ) {return new Symbol(sym.reserved_exit, yychar, yyline, yytext());}
( Return ) {return new Symbol(sym.reserved_return, yychar, yyline, yytext());}
( Structure ) {return new Symbol(sym.reserved_structure, yychar, yyline, yytext());}
( Write ) {return new Symbol(sym.reserved_write, yychar, yyline, yytext());}
( Read ) {return new Symbol(sym.reserved_read, yychar, yyline, yytext());}
( And ) {return new Symbol(sym.reserved_and, yychar, yyline, yytext());}
( Or ) {return new Symbol(sym.reserved_or, yychar, yyline, yytext());}
( Not ) {return new Symbol(sym.reserved_not, yychar, yyline, yytext());}
( Xor ) {return new Symbol(sym.reserved_xor, yychar, yyline, yytext());}

/* Operadores Aritmeticos*/
( "=" ) {return new Symbol(sym.Igual, yychar, yyline, yytext());}
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}
( "," ) {return new Symbol(sym.Coma, yychar, yyline, yytext());}

/*Operadores Relacionales */
( ">" | "<" | ">=" | "<=" | "<>") {return new Symbol(sym.Op_relacional, yychar, yyline, yytext());}

/* Parentesis*/
( "(" ) {return new Symbol(sym.Parentesis_a, yychar, yyline, yytext());}
( ")" ) {return new Symbol(sym.Parentesis_c, yychar, yyline, yytext());}

/* Identificador */
{Letras}({Letras}|{Digitos})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}
/* Numero */
{Digitos}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
