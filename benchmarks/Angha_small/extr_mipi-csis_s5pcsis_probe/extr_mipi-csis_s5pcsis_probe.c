struct a {
  int b
};
struct c {
  struct a d;
  struct e *f
};
struct e {
  int b
} * g;
h() {
  struct c *i = j();
  i->f = &g[0];
  i->d.b = g[0].b;
}
