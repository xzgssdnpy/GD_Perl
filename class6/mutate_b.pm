sub mutate {
  my ($dna) = @_;
  my (@nuc) = ('A','G','T','C');
  my ($p) = randomposition($dna);
  my $nb;
  do {
    $nb = randomnuc(@nuc);
  }
  until ($nb ne substr($dna,$p,1));
  substr($dna,$p,1,$nb);
  return $dna;
}
1;
