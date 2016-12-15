sub randomnuc {
  my (@nucs) = @_;
  return $nucs[rand @nucs];
}
1;

