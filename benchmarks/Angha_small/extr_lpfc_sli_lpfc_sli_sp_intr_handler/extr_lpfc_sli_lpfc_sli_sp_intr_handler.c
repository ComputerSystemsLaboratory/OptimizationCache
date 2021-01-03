struct b {
  long c;
  long d
};
struct e {
  int f;
  struct g *h;
  int i
};
struct j {
  int k;
  int l;
  int m;
  int n;
  int o;
  int aa;
  struct e p;
  int ab;
  struct b q;
  int r;
  struct b ac;
  int s;
  int t
};
struct g {
  struct b *v;
  int *w;
  struct b u
};
a, b, c, d, e, f;
x(void *y) {
  struct j *g;
  int m;
  struct b *h;
  int *i;
  struct g *j;
  g = y;
  if (z())
    if (g == e) {
      if (ad(g->t, &m))
        g->l = c;
      if (g->l)
        return d;
    } else
      m = g->m;
  f = m & g->n;
  if (a)
    if (g->p.f)
      if (ad(g->s))
        goto ae;
  if (b | a) {
    af(g->p);
    af(g->o);
    ag(g->s);
    ah(g->aa);
  }
  if (b && g->p.h)
    j = g->p.h;
  if (j->u.c) {
    ah(g->aa);
    f = b;
  } else {
    g->p.h = 0;
    ah(g->aa);
    g->r = ai(g->ac);
    aj(&g->q);
    i = j->w;
    h = j->v;
    ak();
    j->w = i;
    j->v = h;
    al(g->ab);
  }
  if (b && g->p.h)
    g->o = b;
ae:
  ah(g->aa);
}
