struct a {
  int b;
  struct c *d
};
struct c {
  int e
} f(struct a *g) {
  g->b = g;
  for (; g->b;)
    g->d[0].e = 6;
}
