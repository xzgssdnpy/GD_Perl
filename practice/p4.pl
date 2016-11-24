#!/usr/bin/perl -w
use strict;
my $DNA = 'ACGTTGACGTACATAGC';
print "DNA:\n";
print "$DNA\n\n";
my $revcom = reverse $DNA;
$revcom =~ tr/ACGTacgt/TGCAtgca/;
print "the reverse complement:\n";
print "$revcom\n\n";
exit;
