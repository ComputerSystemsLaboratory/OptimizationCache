d;
struct a {
  int b;
  int c
} e(struct a *f) {
  int g[1], *h = g;
  f->c++;
  *h++ = f;
  if (d)
    h[-1] = 0;
  *h = f->b | f->c & 5;
  if (d)
    i(h);
}
