#!/usr/bin/perl -w -CAS

use utf8;

$_ = join('', <>);

s/\{\\centering\\bfseries\\itshape\s+(.*?)\s+\\par\}/\\section\{$1\}/gs;

print;
