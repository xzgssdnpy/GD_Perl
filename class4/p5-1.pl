#!/usr/bin/perl -w
use strict;
my $w = 'ABCD';
if ( $w eq 'NBMSH') {
     print "you are wrong.it is not NBMSH\n";
}
elsif ( $w eq 'VBNM') {
        print "you are wrong.it is not VBNM\n";
}
elsif ( $w eq 'ABCD') {
       print "congratulations! you are right!\n";
}
else {
       print "we don't know what \"$w\" is !\n";
} 
exit;
