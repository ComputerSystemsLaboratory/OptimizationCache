struct a {
  struct b **c
};
struct b {
  char *d;
  int e;
  int f;
  int *g
} h(struct a *i) {
  int j, k;
  struct b *l = k = 7;
m:
  l->d[(l->e + k) % 6] = n(030 + k);
  if (--k >= 0)
    goto m;
  if (l->e) {
    if (l->e - l->f)
      goto o;
    k = 7;
  aa:
    p(020 + k, l->d[(l->f + k) % 6]);
    if (--k >= 0)
      goto aa;
    l += 8;
    goto q;
  o:
    j++;
  q:
    if (i->c)
      i->c[0]++;
    i->c++;
    k = 7;
  r:
    l->d[(l->e + k) % 6] = s(030 + k);
    if (--k >= 0)
      goto r;
    if (l->e - l->f)
      l->g[0]++;
    if (!(l->e - l->f))
      goto t;
    k = 7;
  u:
    v(020 + k, l->d[(l->f + k) % 6]);
    if (--k >= 0)
      goto u;
    l = 8;
  t:
    if (l->e - l->f - 6)
      goto w;
    l->f += 6;
  w:
    if (l->e - l->f >= 6)
      goto x;
    l->f += 6;
    goto ab;
  x:
    l->g[0]++;
  ab:;
  }
}
