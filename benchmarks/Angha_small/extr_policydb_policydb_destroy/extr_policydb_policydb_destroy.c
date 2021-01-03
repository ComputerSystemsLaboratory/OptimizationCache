struct {
  int a
} * b;
c, d;
e() {
  for (; c;)
    ;
  for (; d < c; d++)
    f();
  if (b->a) {
    for (; b;)
      g(b->a);
    h(b->a);
  }
}
