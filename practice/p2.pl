#!/usr/bin/perl -w
use strict;
my $DNA1 = 'ACGTU';
my $DNA2 = 'TAGC';
print "two DNA fragments:\n";
print $DNA1, "\n";
print $DNA2, "\n\n";
my $DNA3 = "$DNA1$DNA2";
print "the concatenation of the both:\n";
print "$DNA3\n\n";
exit;
