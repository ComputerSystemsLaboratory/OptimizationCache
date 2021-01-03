struct a {
  long b;
  int c
} d() {
  struct a *e = d;
  if (e->c)
    e->b = e;
  --e->b;
}
