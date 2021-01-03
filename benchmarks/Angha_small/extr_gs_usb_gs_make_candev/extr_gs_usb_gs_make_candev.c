struct a {
  int b
};
c, d, e, f, g;
h() {
  struct a *i = j();
  if (i->b)
    g = d;
  if (i->b & f)
    g = e;
  if (i->b)
    g = c;
}
