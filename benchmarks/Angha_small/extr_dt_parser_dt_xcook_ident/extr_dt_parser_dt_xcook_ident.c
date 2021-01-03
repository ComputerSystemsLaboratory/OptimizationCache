struct a {
  int b;
  int c
};
struct {
  long d;
  struct e *f
} * g;
struct e {
  struct a *h;
  struct e *i
};
char j;
k;
char *l;
bcopy(struct a *, *, int);
m() {
  char *n = o();
  struct e *a;
  struct a b;
  if (l && l[1])
    l[1] = '\0';
  if (j && (a = p())) {
    if (g)
      q(k & b.b);
    q(&b.b);
  }
  a->i = g->f;
  bcopy(&b, m, sizeof(struct a));
  a->h = 1;
}
