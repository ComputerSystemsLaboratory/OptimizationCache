struct a {
  struct b *c
};
struct {
  int d
} * e;
struct b {
  int *f
};
g, h, i;
j(struct a *k) {
  int *f = k->c->f;
  int a;
l:
  a &&a != g &&m(f);
  if (a && h && e->d)
    a = n();
  if (a == 0)
    goto o;
  i = h;
  goto l;
o:;
}
