struct a {
  int b;
  int c
} d() {
  struct a *e = f();
  if (e->c)
    e->b = 0;
  e->b++;
}
