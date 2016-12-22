#!/usr/bin/perl -w
use strict;
use warnings;
use perl;
my @file_data = ();
my $dna = '';
my $revcom = '';
my $protein ='';
@file_data = get_data("sample.fasta");
$dna = extract_seq(@file_data);
print "\n --------Reading Frame 1---------\n\n";
$protein = trans_frame($dna,1);
print_seq($protein,70);
print "\n --------Reading Frame 2---------\n\n";
$protein = trans_frame($dna,2);
print_seq($protein,70);
print "\n --------Reading Frame 3---------\n\n";
$protein = trans_frame($dna,3);
print_seq($protein,70);
$revcom = revcom($dna);
print "\n --------Reading Frame 4---------\n\n";
$protein = trans_frame($revcom,1);
print_seq($protein,70);
print "\n --------Reading Frame 5---------\n\n";
$protein = trans_frame($revcom,2);
print_seq($protein,70);
print "\n --------Reading Frame 6---------\n\n";
$protein = trans_frame($revcom,3);
print_seq($protein,70);
exit;



