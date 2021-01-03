struct a {
  int b;
  int c;
  int *d;
  int e
};
struct f {
  struct g *g
};
struct h {
  long j
};
struct g {
  struct h k;
  long l
};
struct m {
  int n;
  int o;
  int p;
  int q;
  int planes
};
struct dc {
  struct m caps;
  struct f ctx
} r(struct dc *t, struct a *u) {
  unsigned i;
  struct g a;
  t->caps.n = t->caps.o = t->caps.p = t->caps.q = 1;
  a = *t->ctx.g;
  if (a.l && a.k.j)
    u->c = 3;
  else
    u->c = 2;
  if (u->e)
    goto s;
  i = 0;
  for (; i < u->c; i++)
    if (u->d[i])
      goto s;
  for (; u->b;)
    v();
  for (;;)
    t->caps.planes = r;
s:;
}
