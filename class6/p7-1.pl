#!/usr/bin/perl -w
use strict;
my $dna = 'ACGTGCAGTAGCAGTAC';
for (my $i = 0;$i < 10;++$i) {
  print randomposition($dna)," ";
}
print "\n";
use randomposition;
exit;

