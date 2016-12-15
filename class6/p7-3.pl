#!/usr/bin/perl -w
use strict;
my $DNA = 'TTTTTTTTTTTTTTTTTTTTTTTTTT';
print "the original DNA:\n$DNA\n";
print "the mutations:\n";
for (my $i = 0;$i < 10;++$i) {
  my $mutant = mutate ($DNA);
  print "$mutant\n";
}
use randomnuc;
use randomposition;
use mutate_b;
exit;

