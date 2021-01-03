struct a {
  struct b **c;
  struct d **e
};
struct b {
  int f
};
struct d {
  int f
} * g(h) {
  struct a *a = h;
  int i, b, c, d;
  i = j();
  for (; i; b++) {
    int k, l;
    d = 0;
    for (; d < 8; d++) {
      l = d & 1;
      k = d & 2;
      if (k && l)
        a->e[b][d].f = 1;
      else
        a->e[b][d].f = g();
    }
  }
  for (; d < 3; d++)
    g();
  c = 0;
  for (; c < 6; c++) {
    d = 0;
    for (; d < 4; d++)
      if (d == 0 && c)
        a->c[c][d].f = 1;
      else
        a->c[c][d].f = g();
  }
}
