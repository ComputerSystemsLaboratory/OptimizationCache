struct a {
  int b;
  int *c;
  int *d
} * e;
f() {
  struct a *g = h();
  e->d = g->c;
}
