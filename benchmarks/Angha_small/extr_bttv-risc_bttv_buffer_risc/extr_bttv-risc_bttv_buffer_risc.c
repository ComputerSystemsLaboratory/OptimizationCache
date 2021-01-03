struct a {
  struct b *c;
  int btformat
};
struct b {
  int d;
  int btformat
};
e(struct a *f) {
  if (f->c->d)
    g();
  f->btformat = f->c->btformat;
}
