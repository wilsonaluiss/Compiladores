package miumg.compiladores;

%%

//Opciones y definiciones regulares

%public
%class Scanner
%char
%line
%column
%cup
// standalone se coloca cuando funciona solo (sin ningun contexto)

%{
     private Symbol symbol(int tipo, Object valor){
        return new Symbol(tipo, yyline, yycolumn, value);
    }
%}


//Definición regular
digito= [0-9]
numero = {digito}+
palabra = [a-zA-Z]+
identificador = [a-zA-Z][a-zA-Z0-9]*
//numFloat = ^-?\d+(?:.\d+)?$
//numDouble= ^-?\d+(?:.\d+)?(?:[eE][+-]?\d+)?$
//numEntero = ^-?\d+$
operadorLogico = "&" | "&&" | "||" | "!" 
espacios_blanco = [\r|\n|\r\n| |\t]
comillas = [""]


%%

//Reglas léxicas
// 1. Declaracion de variables 
/*"float"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline );  }*/
/*{numFloat}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }*/
"double"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
/*{numDouble}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"int"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }*/
"long"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"short"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
{numero}    { System.out.println("Lexema: "  + yytext() ); return symbol(sym.NUMERO, yytext)}
/*{numEntero}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }*/
"String"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"boolean"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

// 2. Expresiones
// 2.1
"+"     { System.out.println("Lexema: "  + yytext()) ; return symbol(sym.SUMA, yytext); }
"-"     { System.out.println("Lexema: " + yytext() ); return symbol(sym.RESTA, yytext);}
"*"     { System.out.println("Lexema: "  + yytext());return symbol(sym.MULTIPLICACION, yytext) }
"/"     { System.out.println("Lexema: " + yytext()  }
"^"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"("     { System.out.println("Lexema: " + yytext() ); return symbol(sym.PARENTESIS_ABRE, yytext)}
")"     { System.out.println("Lexema: " + yytext() ); return symbol(sym.PARENTESIS_CIERRA, yytext) }

// 2.2
">"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
">="     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"<"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"<="     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"="     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"!="     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

// 2.3 

{operadorLogico}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

// 3.

"if"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"else"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }


// 4
"for"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"while"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"do"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"while"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

//6
"System"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"."     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"out"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"println"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
";"     { System.out.println("Lexema: " + yytext() ); return symbol(sym.PUNTO_y_COMA, yytext) }

{espacios_blanco}   {/* Ignorar estos símbolos */}
