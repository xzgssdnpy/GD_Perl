#!usr/bin/perl -w
use strict;
my $DNA = 'TCAGTGTAC';
print "DNA:\n";
print "$DNA\n\n";
my $RNA = $DNA;
$RNA =~ s/T/U/g;
print "RNA:\n";
print "$RNA\n\n";
exit;


