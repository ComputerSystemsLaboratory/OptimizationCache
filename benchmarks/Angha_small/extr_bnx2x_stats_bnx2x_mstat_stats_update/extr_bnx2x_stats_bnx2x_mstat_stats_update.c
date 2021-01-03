struct a {
  int b;
  int c
};
struct d {
  struct a e;
  int f
};
struct g {
  int h;
  int i;
  int j;
  int k
};
l, m;
void *n();
o() {
  struct g *p = n();
  struct d *a = n();
  q(m, l);
  r(p->i, a, a->f);
  r(p, a->e.c, p->j);
  r(p->k);
}
