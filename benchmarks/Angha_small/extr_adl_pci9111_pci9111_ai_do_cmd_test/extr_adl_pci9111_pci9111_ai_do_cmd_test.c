struct a {
  long b;
  int c
};
d(struct a *g) {
  int e = 0, f;
  if (g->b)
    e++;
  if (g)
    e++;
  if (g)
    h();
  if (g->c > 1)
    for (; g->c; f++)
      if (f)
        i();
  if (e)
    return 5;
  return 0;
}
