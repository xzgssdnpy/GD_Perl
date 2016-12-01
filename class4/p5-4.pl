#!/usr/bin/perl -w
use strict;
print "please enter the filename of the DNA sequence data:\n";
my $dna_fn = <STDIN>;
chomp $dna_fn;
unless ( open( DFN,$dna_fn )) {
         print "can't open the file!\n";
         exit;
}
my @DNA = <DFN>;
close DFN;
my $DNA = join( '', @DNA );
$DNA =~ s/\s//g;
@DNA = split ( '', $DNA );
my $base;
my $count_of_A;
my $count_of_C;
my $count_of_G;
my $count_of_T;
my $errors;
foreach $base (@DNA) {
   if ( $base eq 'A') {
        ++$count_of_A;
   }
   elsif ( $base eq 'C') {
        ++$count_of_C;
   }
   elsif ( $base eq 'G') {
        ++$count_of_G;
   }
   elsif ( $base eq 'T') {
        ++$count_of_T;
   } 
   else {
         print "error - i can't recognize this base : $base\n";
         ++$errors;
   }
}
print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";
exit;


