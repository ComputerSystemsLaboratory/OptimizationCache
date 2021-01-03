struct a {
  int b;
  int c
} d(struct a *i) {
  int e, f, g, h = f = i->b;
  i = f;
  e = 0;
  for (; e < 6; e++)
    if (h << e + 16)
      j();
  g = i->b;
  e = 0;
  for (; e < 4; e++) {
    i = f + e;
    if (h << 2 * e)
      k();
    if (h & (1 << i->b - f) / 8 > g)
      g = 8;
  }
  e = 0;
  for (; e < 8; e++)
    if (h & e + 6)
      j();
  i->b = g;
}
