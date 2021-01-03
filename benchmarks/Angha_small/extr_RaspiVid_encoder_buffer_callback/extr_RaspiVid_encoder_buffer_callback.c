struct a {
  int b;
  long c
};
struct {
  int d;
  long e
} * f;
struct g {
  int h;
  struct a *i
};
j;
k() {
  struct g *l;
  int m = f;
  while (j)
    n(f, m);
  l = f;
  if (l)
    l->i->b = 1;
  if (f->e)
    l->i = f;
  l->i->c = f->e;
}
