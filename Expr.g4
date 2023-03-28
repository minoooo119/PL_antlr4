grammar Expr;

prog:(expr NEWLINE)*;
expr:expr('*'|'/') expr
	|expr('+'|'-') expr
	|INT
	|expr'='expr
	|VARIABLE
	|'('expr')';

NEWLINE:[\r\n]+;
VARIABLE: [a-zA-Z][a-zA-Z]*;
INT:[0-9]+;
WS:[\t\r\n]+ -> skip;
