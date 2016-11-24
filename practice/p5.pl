#!/usr/bin/perl -w
use strict;
my $pro_fn = 'protein';
open( PROTEINFILE, $pro_fn );
my $protein1 = <PROTEINFILE>;
my $protein2 = <PROTEINFILE>;
my $protein3 = <PROTEINFILE>;
my $protein4 = <PROTEINFILE>;
my $protein5 = <PROTEINFILE>;
my $protein6 = <PROTEINFILE>;
my $protein7 = <PROTEINFILE>;
my $protein8 = <PROTEINFILE>;
print "protien:\n";
print $protein1,$protein2,$protein3,$protein4,$protein5,$protein6,$protein7,$protein8;
close PROTEINFILE;
exit;

