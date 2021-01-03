struct a {
  int b
};
c, d, e, f, g, h, i;
j() {
  struct a *k;
  int *a = l();
  k = m();
  if (*a)
    k->b = c;
  k->b &= f;
  if (i)
    k->b = d;
  if (g)
    k->b = d;
  if (h)
    k->b = e;
  k->b &= e;
  if (k)
    n();
}
