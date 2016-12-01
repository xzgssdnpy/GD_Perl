#!/usr/bin/perl -w
use strict;
my $pro_fn = 'protein';
unless ( open( PROTEINFILE, $pro_fn )) {
         print "could not open file $pro_fn!\n";
         exit;
}
while ( my $pro = <PROTEINFILE> ){
        print "the next line:\n";
        print "$pro";
}
close PROTEINFILE;
exit;

