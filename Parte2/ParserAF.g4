grammar ParserAF;
import LexerAFv2;

inicio: texto EOF;

texto: automata metadatos defEstados defAlfabeto defFinales funcionesTransicion;
funcionesTransicion: funcionTransicion | funcionTransicion funcionesTransicion;

automata: tipoDeAutomata NOMBRE_MAYUSCULA IGUAL quintupla;
quintupla : PARENTESIS_ABRE NOMBRE_MAYUSCULA COMA SIGMA COMA FUNCION COMA NOMBRE_ESTADO COMA NOMBRE_MAYUSCULA PARENTESIS_CIERRA;
tipoDeAutomata: AFD | AFN | AFN_EPSILON;

//def metadatos
metadatos: autor fecha version;
autor : TAG_AUTOR NOMBRE_AUTOR;
fecha : TAG_FECHA FECHA;
version :TAG_VERSION VERSION;

//def conjunto de estados
defEstados: NOMBRE_MAYUSCULA IGUAL CONJUNTO_ABRE estado CONJUNTO_CIERRA;



//def alfabeto
defAlfabeto:SIGMA IGUAL CONJUNTO_ABRE simbolo CONJUNTO_CIERRA;
simbolo:  SIMBOLO | SIMBOLO COMA simbolo; 


//def finales
defFinales: NOMBRE_MAYUSCULA IGUAL CONJUNTO_ABRE finales CONJUNTO_CIERRA;
finales: NOMBRE_ESTADO | NOMBRE_ESTADO COMA finales;


//def funcion de transicion
funcionTransicion:FUNCION PARENTESIS_ABRE NOMBRE_ESTADO COMA simboloEpsilon PARENTESIS_CIERRA IGUAL resultado;                         

simboloEpsilon: SIMBOLO | EPSILON;

resultado : rdoEstados | NOMBRE_ESTADO | CONJUNTO_VACIO;
rdoEstados: CONJUNTO_ABRE estado CONJUNTO_CIERRA;
estado : NOMBRE_ESTADO | NOMBRE_ESTADO COMA estado;





