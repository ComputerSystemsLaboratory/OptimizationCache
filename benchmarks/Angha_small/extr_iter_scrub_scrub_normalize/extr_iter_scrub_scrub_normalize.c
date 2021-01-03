struct a {
  long b;
  struct a *c
};
struct {
  long d;
  int *e
} * f;
struct {
  int g;
  struct a *h;
  struct a *i
} * j;
k, l, m, n;
o() {
  int *p = f->e;
  struct a *a, *b;
  a = j->i;
  while (a) {
    if (q())
      continue;
    if (a == l) {
      struct a *c = r();
      if (c->c)
        j->h = a;
      a->c = c->c;
      c->c = a;
      s(&p);
      a = a->c;
    }
    a = a->c;
  }
  while (a->b == n)
    if (m) {
      if (t())
        continue;
      if (k)
        u(&a);
      if (b)
        b = a;
    }
  while (a)
    a = a->c;
}
