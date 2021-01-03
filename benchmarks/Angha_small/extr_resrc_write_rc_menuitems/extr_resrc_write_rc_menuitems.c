struct a {
  int b;
  struct a *c
} d() {
  struct a *e = d;
  if (e->c)
    f();
  if (e->c->c->c)
    f();
  if (e->c->c)
    f();
  if (e->c->b)
    f();
  if (e->c)
    f();
}
