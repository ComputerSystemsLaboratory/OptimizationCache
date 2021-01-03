struct a {
  int *b
};
c, d;
e() {
  struct a *f = e;
  if (g())
    f->b[0] |= 3;
  else if (h())
    f->b[0] |= (3 & (d | c)) << 2;
}
