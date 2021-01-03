struct a {
  int b
};
c, d, e;
f() {
  struct a *g = d;
  if (g->b & c) {
    if (g->b)
      h();
    if (g->b & c)
      i();
    if (e)
      goto done;
  }
  if (g->b) {
    j();
    if (e)
      goto done;
  }
  if (g->b)
    if (e)
      goto done;
  if (g)
  done:
    k();
}
