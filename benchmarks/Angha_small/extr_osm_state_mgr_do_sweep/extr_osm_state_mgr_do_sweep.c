struct a {
  struct b *c
};
struct d {
  long e
};
struct b {
  long f;
  long g;
  long h;
  long i;
  struct d j;
  long k
};
l, m, n;
void o(struct a *p) {
  int q;
  if (p->c)
    p->c->f = n;
  if (p->c->g)
    p->c->f = n;
  if (p->c)
    r();
  if (p->c->j.e && p->c->k)
    s();
t:
  p->c->f = l;
  p->c->i = l;
  if (p->c->f)
    goto t;
  if (p->c->h)
    q = u();
  if (q)
    return;
  if (p->c->h == m)
    v();
  w(p->c);
}
