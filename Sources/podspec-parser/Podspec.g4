grammar Podspec;

global_scope: POD_SPEC_NEW DO PIPE spec_var PIPE spec_body END;

spec_var: VALID_NAME;

spec_body:
    spec_name spec_body |
    spec_dependency spec_body |
    spec_dependency;

spec_dependency: spec_var DOT DEPENDENCY QUOTE dependency QUOTE;

dependency: VALID_NAME;
    
spec_name: spec_var DOT NAME EQUALS QUOTE name QUOTE;

name: VALID_NAME;

POD_SPEC_NEW: 'Pod::Spec.new';
PIPE: '|';
DO: 'do';
END: 'end';
DOT: '.';
NAME: 'name';
EQUALS: '=';
QUOTE: '\'';
DEPENDENCY: 'dependency';

SPACE: [ \t\r\n]+ -> skip;
VALID_NAME: [a-zA-Z] [a-zA-Z_0-9]*;
