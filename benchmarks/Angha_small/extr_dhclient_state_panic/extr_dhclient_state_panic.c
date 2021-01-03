struct a {
  struct b *c
};
struct d {
  long e;
  struct d *f
};
struct b {
  struct d *active;
  struct d *g
};
h;
i() {
  struct a *a = h;
  struct d *j;
  if (!a)
    goto k;
  while (a->c) {
    l();
    j = a->c->g;
  k:
    for (; j;)
      a = a;
    a->c->g = a->c->g->f;
    if (a->c->active)
      break;
  }
}
