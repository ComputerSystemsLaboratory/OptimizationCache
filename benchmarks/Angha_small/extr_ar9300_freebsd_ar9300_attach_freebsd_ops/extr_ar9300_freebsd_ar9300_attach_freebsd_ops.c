struct {
  int a;
  void *b
} * c(d) {
  c()->b = c()->b;
}
