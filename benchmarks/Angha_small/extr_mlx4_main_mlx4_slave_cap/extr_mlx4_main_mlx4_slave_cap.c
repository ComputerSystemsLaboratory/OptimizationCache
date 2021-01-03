struct a {
  long b;
  int c;
  int d;
  int e;
  int f
};
g, h, j, k;
l(struct a *n) {
  int i;
  if (!n)
    goto m;
  for (; i <= n->b; ++i) {
    o(i);
    if (j) {
      p(i);
      goto m;
    }
  }
  if (k) {
    n->c = 4;
    n->d = 1;
  } else
    n->c = 2;
  if (g) {
    n->e = 4;
    n->f = h;
  } else
    n->e = 2;
  if (k)
  m:
    q();
}
