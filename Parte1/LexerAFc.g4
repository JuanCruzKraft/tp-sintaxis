lexer grammar LexerAFc;

AFD: 'AFD' {System.out.print("AFD ");}; 
AFN: 'AFN' {System.out.print("AFN ");};
AFN_EPSILON: 'AFN-\\epsilon' {System.out.print("AFN_EPSILON ");};

SIGMA: '\\Sigma' {System.out.print("SIGMA ");};
EPSILON: '\\epsilon' {System.out.print("EPSILON ");};

IGUAL: '=' {System.out.print("IGUAL ");};
PARENTESIS_ABRE: '(' {System.out.print("PARENTESIS_ABRE ");};
PARENTESIS_CIERRA: ')' {System.out.print("PARENTESIS_CIERRA \n");};
COMA: ',' {System.out.print("COMA ");};
FUNCION: ('f'|'\\delta') {System.out.print("\nFUNCION ");};

TAG_AUTOR: '@autor:' {System.out.print("TAG_AUTOR ");};
TAG_FECHA: '@fecha:' {System.out.print("TAG_FECHA ");};
TAG_VERSION: '@version:' {System.out.print("TAG_VERSION ");};

CONJUNTO_ABRE: '{' {System.out.print("CONJUNTO_ABRE ");};
CONJUNTO_CIERRA: '}' {System.out.print("CONJUNTO_CIERRA \n");};
CONJUNTO_VACIO: '\\emptyset' {System.out.print("CONJUNTO_VACIO ");};

COMENTARIO_LINEA: '/''/'(CHAR_M|CHAR|' ')* WS {System.out.println("COMENTARIO_LINEA");};

NOMBRE_MAYUSCULA: CHAR_M(CHAR_M|LDG)* {System.out.print("NOMBRE_MAYUSCULA: "+getText() + " ");};
NOMBRE_ESTADO: 'q'LDG+ {System.out.print("NOMBRE_ESTADO: "+getText() + " ");};
NOMBRE_AUTOR: '\''(CHAR_M|CHAR|' ')+'\'' {System.out.println("NOMBRE_AUTOR: "+getText());};
FECHA: INT+'/'INT+'/'INT+ {System.out.println("FECHA: "+getText());};
VERSION: INT'.'INT'.'INT('-alpha'|'-beta'|'-rc')?  {System.out.println("VERSION: "+getText());};
SIMBOLO: ([!-&]|[0-9]|'@'|[a-z]) {System.out.print("SIMBOLO: "+getText()+ " ");};


INT: [0-9]+;
CHAR: ([a-z]|'á'|'é'|'í'|'ó'|'ú'|'ñ')+;
CHAR_M: [A-Z]+;
LDG: (CHAR|INT|'_')+;

WS: [ \t\r\n]+ -> skip;