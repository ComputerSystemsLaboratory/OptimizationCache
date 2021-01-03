struct a {
  int *b;
  int *c
};
struct d {
  int *e;
  int *f
};
g;
h(struct a *i) {
  struct d *a = j(i->b);
  a->e = i->b;
  a->f = i->c;
  if (i)
    k(a->e);
  a->f[g] = a->f;
}
