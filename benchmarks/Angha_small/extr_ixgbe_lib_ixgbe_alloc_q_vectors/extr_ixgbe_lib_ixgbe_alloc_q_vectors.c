struct a {
  int b;
  int c;
  int d;
  int e;
  int *f;
  int *g
} h(struct a *l) {
  int i = l, j = 0, k = 0;
  if (l)
    for (; l->c; k++) {
      m();
      j++;
    }
  for (; l->b; k++) {
    m(k, j);
    j++;
  }
  for (; l->c;)
    l->g[0] = 0;
  for (; l->d;)
    l->f[0] = 0;
  for (;;)
    l->e = 0;
}
