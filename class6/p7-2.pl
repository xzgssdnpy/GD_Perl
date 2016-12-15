#!/usr/bin/perl -w
use strict;
my @nuc = ('A','G','T','C');
for (my $i = 0;$i < 10;++$i) {
  print randomnuc(@nuc)," ";
}
print "\n";
use randomnuc;
exit;

