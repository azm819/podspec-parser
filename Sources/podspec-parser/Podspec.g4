grammar Podspec;

global_scope: POD_SPEC_NEW DO PIPE spec_var PIPE spec_body END;

spec_var: VALID_NAME;

spec_body:
    spec_name spec_body |
    spec_dependency spec_body |
    spec_dependency | spec_name;
    
spec_name: spec_var DOT NAME EQUALS QUOTE name QUOTE;

name: VALID_NAME;

spec_dependency: spec_var DOT DEPENDENCY QUOTE subspec QUOTE;

subspec: dependency | dependency SLASH subspec;

dependency: VALID_NAME;

POD_SPEC_NEW: 'Pod::Spec.new';
PIPE: '|';
DO: 'do';
END: 'end';
DOT: '.';
NAME: 'name';
EQUALS: '=';
QUOTE: '\'';
SLASH: '/';
BACKSLASH: '\\';
DEPENDENCY: 'dependency';

VALID_NAME: [a-zA-Z] [a-zA-Z_0-9\-]*;

SPACE: [ \t\r\n]+ -> skip;
