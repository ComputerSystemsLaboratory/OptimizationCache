struct {
  int a
} * b;
c(e) {
  int d = 0;
  for (; e > 0 && b->a;) {
    e--;
    d++;
  }
  if (d)
    f();
}
