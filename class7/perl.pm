# codon2aa

sub codon2aa {
  my($codon) = @_;
  $codon = uc $codon;
  my(%g_code) = (
  'TCA' => 'S',
  'TCC' => 'S',
  'TCG' => 'S',
  'TCT' => 'S',
  'TTC' => 'F',
  'TTT' => 'F',
  'TTA' => 'L',
  'TTG' => 'L',
  'TAC' => 'Y',
  'TAT' => 'Y',
  'TAA' => '_',
  'TAG' => '_',
  'TGA' => '_',
  'TGC' => 'C',
  'TGT' => 'C',
  'TGG' => 'W',
  'CTA' => 'L',
  'CTC' => 'L',
  'CTG' => 'L',
  'CTT' => 'L',
  'CCT' => 'P',
  'CCA' => 'P',
  'CCC' => 'P',
  'CCG' => 'P',
  'CAC' => 'H',
  'CAT' => 'H',
  'CAA' => 'Q',
  'CAG' => 'Q',
  'CGA' => 'R',
  'CGC' => 'R',
  'CGT' => 'R',
  'CGG' => 'R',
  'ATA' => 'I',
  'ATC' => 'I',
  'ATT' => 'I',
  'ATG' => 'M',
  'ACA' => 'T',
  'ACC' => 'T',
  'ACG' => 'T',
  'ACT' => 'T',
  'AAA' => 'K',
  'AAG' => 'K',
  'AAT' => 'N',
  'AAC' => 'N',
  'AGC' => 'S',
  'AGT' => 'S',
  'AGA' => 'R',
  'AGG' => 'R',
  'GTA' => 'V',
  'GTC' => 'V',
  'GTG' => 'V',
  'GTT' => 'V',
  'GCA' => 'A',
  'GCT' => 'A',
  'GCC' => 'A',
  'GCG' => 'A',
  'GAC' => 'D',
  'GAT' => 'D',
  'GAA' => 'E',
  'GAG' => 'E',
  'GGA' => 'G',
  'GGC' => 'G',
  'GGG' => 'G',
  'GGT' => 'G',
);
if (exists $g_code{$codon}) {
  return $g_code{$codon};
  }
  else {
    print "there exists no such codon \"$codon\"!\n ";
    exit;
  } 
}


# dna2peptide

sub dna2peptide {
  my ($dna) = @_;
  use strict;
  use warnings;
  my $protein = '';
  for (my $i = 0;$i < (length($dna)- 2) ;$i += 3) {
    $protein .= codon2aa(substr($dna,$i,3));
  }
  return $protein;
}


# get_data

sub get_data {
  my ($filename) = @_;
  use strict;
  use warnings;
  my @filedata = ();
  unless (open(FILEDATA,$filename)) {
    print STDERR "cannot open file \"$filename\"\n";
    exit;
  }
  @filedata = <FILEDATA>;
  close FILEDATA;
  return @filedata;
}


# extract_seq

sub extract_seq {
  my (@fastadata) = @_;
  use strict;
  use warnings;
  use perl;
  my $seq = '';
  foreach my $line (@fastadata) {
    if ($line =~ /^\s*$/) {
       next;
     } elsif($line =~ /^\s*#/) {
       next;
     } elsif($line =~ /^>/) {
       next;
     } else {
       $seq .= $line;
     }
  }
  $seq =~ s/\s//g;
  return $seq;
}


# print_seq

sub print_seq {
  my ($seq,$length) = @_;
  use strict;
  use warnings;
  for (my $i = 0;$i <length($seq);$i += $length) {
    print substr($seq,$i,$length),"\n";
  }
}
1;

   





























