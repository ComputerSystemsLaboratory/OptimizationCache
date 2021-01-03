struct a {
  long b;
  int c
};
d, e;
f(struct a *g) {
  int h, i = 0, j, k = 0;
l:
m:
  h = e;
  if (n()) {
    if (o()) {
      i = 1;
      goto out;
    }
    p(g->c);
    if (!k)
      if (h)
        goto out;
    k = 1;
    j += f;
    if (j)
      goto m;
  } else
    h = d;
out:
  q();
  if (k)
    r();
  if (i)
    if (!h)
      if (g->b)
        goto l;
  s(g->c);
  if (!h && g->b)
    t();
  return h;
}
