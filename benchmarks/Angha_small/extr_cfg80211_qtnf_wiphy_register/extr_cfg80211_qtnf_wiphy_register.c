struct a {
  int b
};
c, d, e, f, g, h, i, j;
k() {
  struct a *a = l();
  if (j)
    m();
  if (j & h)
    m();
  if (j & i)
    a->b = e;
  if (j & f)
    a->b = c;
  if (j & g)
    a->b = d;
}
