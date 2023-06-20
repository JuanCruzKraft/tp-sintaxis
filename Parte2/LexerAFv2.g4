lexer grammar LexerAFv2;

AFD: 'AFD' ; 
AFN: 'AFN' ;
AFN_EPSILON: 'AFN-\\epsilon' ;

SIGMA: '\\Sigma' ;
EPSILON: '\\epsilon' ;

IGUAL: '=';
PARENTESIS_ABRE: '(' ;
PARENTESIS_CIERRA: ')' ;
COMA: ',' ;
FUNCION: ('f'|'\\delta') ;

TAG_AUTOR: '@autor:' ;
TAG_FECHA: '@fecha:' ;
TAG_VERSION: '@version:';

CONJUNTO_ABRE: '{' ;
CONJUNTO_CIERRA: '}' ;
CONJUNTO_VACIO: '\\emptyset' ;

COMENTARIO_LINEA: '/''/'(CHAR_M|CHAR|' ')* WS -> skip;

NOMBRE_MAYUSCULA: CHAR_M(CHAR_M|LDG)* ;
NOMBRE_ESTADO: 'q'LDG+ ;
NOMBRE_AUTOR: '\''(CHAR_M|CHAR|' ')+'\'' ;
FECHA: INT+'/'INT+'/'INT+ ;
VERSION: INT'.'INT'.'INT('-alpha'|'-beta'|'-rc')? ;
SIMBOLO: ([!-&]|[0-9]|'@'|[a-z]) ;


INT: [0-9]+;
CHAR: ([a-z]|'á'|'é'|'í'|'ó'|'ú'|'ñ')+;
CHAR_M: [A-Z]+;
LDG: (CHAR|INT|'_')+;

WS: [ \t\r\n]+ -> skip;