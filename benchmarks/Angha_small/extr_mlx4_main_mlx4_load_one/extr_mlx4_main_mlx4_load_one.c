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
  a = l;
  if (a->b) {
    n();
    if (h)
      goto o;
  }
  p(a->b);
  i = 0;
  for (; i < sizeof(a) / sizeof(k); i++) {
    unsigned j = 0;
    for (; j < a->e; ++m, ++j)
      a->d[m].f = a->d[m].g = 2;
  }
o:;
}
