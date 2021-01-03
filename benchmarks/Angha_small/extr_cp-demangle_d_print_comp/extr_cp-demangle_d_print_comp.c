struct a {
  int b
};
struct c {
  int *d;
  int *e
};
struct f {
  struct c *g;
  int *e
};
h;
i(struct f *k) {
  switch (h) {
  case 7: {
    struct a *j;
    if (j->b)
      j;
    i(k);
  }
    struct c a;
    a.d = k->g;
    a.e = l();
    {
      struct c b;
      b.d = k->g = &b;
      b.e = k->e;
      i(k);
      k->g = b.d;
    }
  case 9:
    a.d = k->g;
    k->g = &a;
    a.e = k->e;
    i(k);
    k->g = a.d;
  }
}
