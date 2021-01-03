struct a {
  struct b *c;
  struct d *e;
  int f;
  struct b *g;
  int h;
  int i;
  int j;
  int k
};
struct b {
  int aa;
  int ab;
  int h;
  struct b *l
};
struct d {
  int m;
  int n;
  int (*o)();
  int (*p)()
};
q, r, s, t, u;
void *v();
w(void *x) {
  struct a *a = x;
  if (a->k)
    y(a, a->j, a->e, a->f, a->i);
  if (t)
    a->e->p(a->f);
  if (s) {
    z(a->h);
    if (a->c)
      return a;
    a->g->h = z;
    a->c = a->g;
    a->e->o(a->f);
  }
  struct b *b = v();
  switch (u) {
  case 9:
    b->aa = q;
  case 8:
    b->aa = &a->e->n;
  case 0:
    b->aa = a->e > ac(b, b->ab);
  }
  if (r) {
    ad(a->e);
    a->c = a->c->l;
  }
  a->c = a->c->l;
  ad(a->e);
}
