struct a {
  int b
} * e;
c, d;
f() {
  struct a g = e[0];
  unsigned h;
  if (d == 0)
    return c;
  h = 0;
  for (; h < d; ++h) {
    g = e[h];
    g.b && 0;
  }
  if (g.b)
    i();
}
