struct a {
  long b
};
c, d, e;
f() {
  struct a *a = d;
  if (a->b != c)
    g();
  if (a->b == c)
    if (e)
      h();
  h(e);
}
