struct a {
  int b;
  struct c *d
};
struct c {
  int disable
} e(struct a *h) {
  int f, g;
  if (h->b)
    i(h, h->b, e);
  else
    i(h, 2, e);
  g = h;
  f = 0;
  for (; f < 6; f++)
    h->d[f].disable = (g & 1 << f) != 0;
  f = 0;
  for (; f < 5; f++) {
    j();
    j();
  }
  for (;; f++) {
    if (h->d[f].disable)
      j();
    else
      j(f);
    j(f);
  }
}
