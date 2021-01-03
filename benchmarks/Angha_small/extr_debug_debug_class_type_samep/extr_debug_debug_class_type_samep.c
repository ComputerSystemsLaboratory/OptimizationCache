struct a {
  int b
};
struct c {
  long d
};
struct {
  struct c *e
} * f;
g, h;
*i;
j() {
  if (f->e) {
    struct c *k;
    for (; k; k++) {
      i = k->d;
      if (i)
        if (l())
          return g;
      l(i, k->d);
    }
  }
  if (f) {
    struct a *m, *n = h;
    for (; m && n; ++m, ++n) {
      struct a *o;
      if (o->b)
        for (;;)
          ;
    }
  }
}
