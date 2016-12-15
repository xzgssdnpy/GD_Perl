sub mutate {
  my ($dna) = @_;
  my (@nuc) = ('A','G','T','C');
  my ($p) = randomposition($dna);
  my ($nb) = randomnuc(@nuc);
  substr($dna,$p,1,$nb);
  return $dna;
}
1;
