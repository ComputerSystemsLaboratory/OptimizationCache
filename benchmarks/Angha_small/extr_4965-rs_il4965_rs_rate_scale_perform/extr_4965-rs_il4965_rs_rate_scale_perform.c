struct a {
  int b
};
struct c {
  long aa
};
d, f, h, i, j;
*g;
k() {
  struct c *e;
  int a = 0, c = 0;
  struct a *b;
  b = d;
  if (j) {
    a = 1;
    e = &b;
    goto ah;
  }
  e = &b[i];
  if (e->aa)
    goto ai;
  if (h) {
    b = g;
    c = 1;
    goto ah;
  }
  if (f)
    e[f];
  l();
  if (f && b->b)
    a = 1;
  l();
ah:
  if (a)
    m();
  n();
  if (!a && !c && e->aa)
    g = d;
  if (c)
    o();
ai:
  p(b);
}
