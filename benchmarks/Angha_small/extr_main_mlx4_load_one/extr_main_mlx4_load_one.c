struct a {
  int b;
  struct c *d;
  int *e
};
struct c {
  int f;
  int g
};
h, k;
l() {
  struct a *a;
  unsigned m;
  int i;
  a = n();
  if (a->b) {
    o();
    if (h)
      goto p;
  }
  q(a->b);
  i = 0;
  for (; i < sizeof(a) / sizeof(k); i++) {
    unsigned j = 0;
    for (; j < a->e; ++m, ++j)
      a->d[m].f = a->d[m].g = 2;
  }
p:;
}
