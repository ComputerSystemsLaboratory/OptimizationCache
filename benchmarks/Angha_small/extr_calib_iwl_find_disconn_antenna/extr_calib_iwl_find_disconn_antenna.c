struct {
  int a
} b;
c, d, e;
f() {
  for (; e < d; e++) {
    if (c)
      b.a = 1;
    g(b);
  }
  for (; 0 < d; e++)
    if (e)
      g();
}
