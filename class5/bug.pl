#!/usr/bin/perl -w
my $dna = 'CGATGACGATAGCATAGACGTAACCCGATAGACATA';
my @dna;
my $rc = '';
my $pbase = '';
my $subseq = '';
if (@ARGV) {
  $subseq = $ARGV[0];
}
else {
  $subseq = 'TA';
}
my $base1 = substr($subseq,0,1);
my $base2 = substr($subseq,1,1);
@dna = split('',$dna);
foreach (@dna) {
  if ($rc) {
    print;
    next;
  }
  elsif ($pbase eq $base1) {
    if (/$base2/) {
      print $base1,$base2;
      $rc = 1;
    }
  }
  $pbase = $_;
}
print "\n";

