#!/usr/bin/perl -w -CAS

use utf8;

$_ = join('', <>);

s/\$\{?\\blacklozenge\}?\$ \\textit\{(.*?) *?\} *([^\$]*)/\\begin\{definition\}\[$1\]\n$1 $2 \\end\{definition\}\n/g;

s/–/---/g;
s/[ \n]+\\end/\n\\end/g;
s/\\begin/\n\\begin/g;

print;
