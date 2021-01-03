struct a {
  char *b;
  long *c;
  long *d
} * e;
f() {
  struct a *g;
  unsigned h = 0;
  for (; h < 3; h++) {
    j(g->b[h]);
    g->b[h] = 0;
  }
  if (e) {
    long i[3];
    h = 0;
    for (; h < 3; h++) {
      g->b[h] = g->c[h] = i;
      g->d[h] = i[h];
    }
    g = 4;
  }
}
