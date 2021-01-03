struct a {
  int b;
  struct c *ctrl
};
struct c {
  int d
} e;
f() {
  struct a *g = &e;
  if (g->b)
    h();
  g->ctrl[g->b].d = f;
}
