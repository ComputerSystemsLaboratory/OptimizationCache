struct a {
  struct b *d
};
struct e {
  int f;
  struct a g
};
struct b {
  void *h
};
j, k, m, n, o;
*l;
p() {
  struct e *c = k;
  int i, q = m;
  if (m < 1)
    q = 1;
  i = 0;
  for (; i < q; i++) {
    n = l[i];
    if (o)
      c->f = i;
    else
      continue;
    c->g.d[i + 1].h = j;
  }
}
