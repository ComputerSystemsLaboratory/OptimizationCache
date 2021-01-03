struct a {
  int *b
};
struct c {
  int (*d)(struct c *, int);
  int (*e)(struct c *, int, int)
};
struct f {
  int g
} h(struct c *j) {
  struct f *i = k();
  struct a *a = h;
  switch (i->g)
  case 128:
  case 129:
    l();
  if (a->b)
    m();
  if (a != a->b[1]) {
    j->e(j, 1, a->b);
    j->d(j, 0);
  }
  if (a->b[1]) {
    j->e(j, 1, a);
    j->d(j, 0);
  }
  j->e(j, 0, a->b[0]);
}
