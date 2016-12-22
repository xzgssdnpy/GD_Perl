#!/usr/bin/perl -w
use strict;
use warnings;
use perl;
my @file_data = ();
my $dna = '';
@file_data = get_data("sample.fasta");
$dna = extract_seq(@file_data);
print_seq($dna,25);
exit;

