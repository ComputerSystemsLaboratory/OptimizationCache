struct a {
  int *b
};
struct c {
  int *d;
  struct a e
} f() {
  struct c *g = h();
  g->e.b = g->d;
  i(g->d);
}
