struct {
  int a
} * b;
c, d;
e() {
  d = c && b->a && f();
  if (d == c)
    g();
}
