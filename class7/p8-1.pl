#!/usr/bin/perl -w
use strict;
use perl;
my $dna = 'ACGTGCGTACGTACAGTACGTACGATACAGTA';
my $protein = '';
my $codon = '';
for (my $i = 0;$i < (length($dna) - 2);$i += 3) {
  $codon = substr($dna, $i, 3);
  $protein .= codon2aa($codon);
}
print "DNA:$dna\nprotein:$protein\n";
exit;

