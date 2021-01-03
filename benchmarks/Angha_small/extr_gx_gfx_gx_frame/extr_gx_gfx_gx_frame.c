struct a {
  long b;
  long c
};
struct d {
  int e
};
struct f {
  long g;
  long h;
  int i;
  int framebuf;
  long j;
  struct d k;
  long l
};
m, n, o;
p(void *r) {
  struct a *q = s();
  struct f *a = r;
  if (o && a->l || !q)
    return 1;
  if (a != q->c)
    a->g = q;
  a->h = q->c;
  a->i = 1;
  if (n)
    u();
  m = n;
  unsigned t = a;
  w(t);
  if (a->l) {
    unsigned v = 7 * (a->j ? 1 : 2);
    t = a->k.e - 5 * (a->j ? 1 : 2);
    w(v, t);
  }
  x(a->framebuf);
  return 1;
}
