struct a {
  int *b;
  int *c
} d(struct a *e) {
  for (;;) {
    if (f()) {
      e->c = e->b = 0;
      g();
      e->c = e->b = 0;
    }
    e->c = e->b = 0;
    h();
    e->c = e->b = 0;
  }
}
