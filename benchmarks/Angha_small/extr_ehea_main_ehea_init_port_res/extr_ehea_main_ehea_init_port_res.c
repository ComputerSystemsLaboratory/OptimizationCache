typedef void *a;
struct b {
  void *c;
  void *d;
  void *e;
  void *f
} g(struct b *h) {
  a f, d, e, c;
  f = h->f;
  e = h->e;
  d = h->d;
  c = h->c;
  i();
  h->f = f;
  h->e = e;
  h->d = d;
  h->c = c;
}
