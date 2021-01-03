struct a {
  int b
};
struct c {
  int d
};
struct e {
  long f;
  int g;
  struct c *bp
};
struct bitmap {
  struct e counts;
  struct a h
};
i;
j(struct bitmap *o, p) {
  struct e l;
  int m;
  int *n = q(l, &m);
  if (*n)
    r();
  *n |= i;
  if (l.bp) {
    long k;
    for (; l.f; k++)
      if (l.bp[k].d)
        s();
    s(l.bp);
  }
  if (p)
    for (; o->h.b;)
      ;
  t(&o->counts.g);
  if (p)
    u();
}
