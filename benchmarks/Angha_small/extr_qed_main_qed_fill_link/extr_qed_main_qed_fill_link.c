struct a {
  long b;
  long c
};
struct d {
  int e;
  struct a f
};
struct g {
  int h;
  int i;
  int j
};
k;
l(struct g *m) {
  struct d n;
  o(n);
  if (n.f.c || n.f.b)
    m->i = l;
  m->j = m->i;
  if (n.f.b)
    m->h = k;
}
