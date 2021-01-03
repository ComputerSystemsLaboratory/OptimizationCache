struct a {
  long *b;
  int c
};
struct d {
  int e;
  struct a f
} * g();
h(struct d *i) { i->f.b = g(i->f); }
