struct a {
  long b
};
c, d, e, f, g;
void h() {
  struct a *i;
  if (c)
    j();
  if (c | d)
    for (;;) {
      i = g;
      if (k())
        i->b = e;
      else
        i->b = f;
      if (g)
        goto l;
      return;
    l:;
    }
}
