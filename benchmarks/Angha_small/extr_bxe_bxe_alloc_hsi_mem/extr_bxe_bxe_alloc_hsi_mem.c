struct a {
  int b
};
struct c {
  struct d *e
};
struct d {
  int f
};
g, h, k, l, m;
n(struct a *o) {
  struct c *a;
  int i, j;
  if (p()) {
    i = 0;
    for (; i < o->b; i++) {
      a = i;
      for (; k;)
        if (a)
          return 0;
      if (m) {
        q(i);
        return 0;
      }
      for (; g;)
        if (a)
          return 0;
      if (r())
        for (; j < h; j++)
          if (a->e[j].f)
            q(i, j);
      if (r())
        q(i);
      for (; l;) {
        r(a);
        q(i);
        return 0;
      }
      q(i);
    }
  }
}
