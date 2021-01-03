struct a {
  struct b *c
};
struct b {
  int d
};
e() {
  struct a *f = g();
  struct b *h = f;
  int i, j = 0;
  if (f->c->d != e)
    j = 1;
  if (j || f->c->d == e)
    i = k();
  if (j)
    h->d = i;
}
