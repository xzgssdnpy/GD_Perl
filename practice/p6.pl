#!/usr/bin/perl -w
use strict;
my $file_name = 'file';
open ( FILE,$file_name );
my @all = <FILE>;
print "everything:\n";
print @all;
close FILE;
exit;

