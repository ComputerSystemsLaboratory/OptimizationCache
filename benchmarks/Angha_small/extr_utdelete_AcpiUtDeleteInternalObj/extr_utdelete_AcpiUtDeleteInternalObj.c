struct a {
  struct b *c
};
struct b {
  int d;
  struct a e
} f() {
  struct b *g;
  struct b **h;
  while (g) {
    if (g == f) {
      *h = g->e.c;
      break;
    }
    h = &g->e.c;
    g = g->e.c->e.c;
  }
}
