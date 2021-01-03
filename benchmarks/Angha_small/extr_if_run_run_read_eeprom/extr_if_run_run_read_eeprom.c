struct a {
  int b;
  int *c;
  int d;
  int *e;
  struct f *g
};
struct f {
  int h
};
j, k, l, m, n, o, p, q, r, s;
t(struct a *u) {
  int h, a, b, i;
  if (u)
    v(&h);
  u = h;
  if (u) {
    i = 0;
    for (; i < 10; i++) {
      v(u, n + i, h);
      u->g[i].h = h & 5;
    }
  }
  v(u ? j : h);
  v(u ? j : h);
  v(u ? k : o);
  v(u ? l : p);
  v(u ? m : q);
  for (; a < 5; a++)
    v(u ?: h);
  if (u->b) {
    if (h)
      w();
  } else
    u = h;
  u->d = h;
  if (u->d) {
    b = 0;
    for (; b < 3; b++) {
      if (u->c < 10 || u->c[b])
        w(u, r | s, "", b + 1, u);
      u->c = 0;
      if (u->e[b] < -10 || u->e[b] > 0) {
        w(u, r | s, "", b + 1, u);
        u->e = 0;
      }
    }
  }
}
