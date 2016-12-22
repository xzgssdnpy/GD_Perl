#!/usr/bin/perl -w
use strict;
use warnings;
use perl;
my @file_data = ();
my $dna = '';
my $protein = '';
@file_data = get_data("sample.fasta");
$dna = extract_seq(@file_data);
$protein = dna2peptide($dna);
print_seq($protein,25);
exit;


