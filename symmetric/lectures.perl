#!/usr/bin/perl -w -CAS

use utf8;

$_ = lc join('', <>);

s/\R//g;
s/\\ //g;
s/  / /g;

s/^[ ]*(.)/\u$1/g;

s/\. ?([^ ])/\. \u$1/g;

print "\\chapter{".$_."}\n";
