struct a {
  int b;
  int d
};
struct {
  int d
} * b;
struct {
  int d
} * d;
a, e, f, g;
h(void *j) {
  struct a *c = j;
  switch (c->b) {
  case 2:
    c->d = h;
  case 1:
    c->d = g;
  case 9:
    c = 0;
    c->d = f;
  case 7:
    c->d = e;
    break;
  case 8: {
    int i;
    for (; i <= 1; i++)
      if (b[i].d)
        break;
    for (; i < a; i++)
      if (d[i].d)
        c->d = i;
  }
  }
  k(c);
}
