struct a {
  int b;
  struct a *c
} * e;
d, f;
g() {
  for (; e; e = e->c)
    if (f)
      e->b = d;
}
