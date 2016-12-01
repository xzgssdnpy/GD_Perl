#!/usr/bin/perl -w
use strict;
print "please enter the filename of the protein sequence data:";
my $pro_fn = <STDIN>;
chomp $pro_fn;
unless ( open( PROFN,$pro_fn ) ) {
         print "con't open the file\n";
         exit;
}
my @protein = <PROFN>;
close PROFN;
my $protein = join( '',@protein );
$protein =~ s/\s//g;
my $motif;
do {
    print "enter a motif to search for:";
    $motif = <STDIN>;
    chomp $motif;
    if ( $protein =~ /$motif/ ) {
    print "i found it !\n";
   }
    else {
          print "i couldn't find it.\n";
   }
}
until ( $motif =~ /^\s*$/ );
exit;

