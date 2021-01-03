struct a {
  int b;
  int c
};
struct d {
  int e;
  struct a f
};
struct g {
  int e
};
struct h {
  int c;
  int i
};
struct j {
  int *k
};
l, m, n;
struct j *o();
p(struct g *r) {
  struct d q;
  struct h a;
  if (m)
    q.e = r->e;
  else
    q.f.b = l;
  q.f.c = r->e;
  s(q);
  n = &a;
  if (n)
    a.i = o()->k[r->e];
  a.c = r->e;
  for (;;)
    ;
}
