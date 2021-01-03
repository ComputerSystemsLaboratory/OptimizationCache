struct a {
  int b;
  struct c *d;
  struct c *e
};
struct c {
  int f;
  int g;
  int h;
  int i;
  int j;
  int k
};
l, m;
void *n(int, int, int);
p() {
  struct a *o = 0;
  o->d = n(sizeof(int), l, m);
  if (o->d) {
    o->e = n(sizeof(int), l, m);
    q(o->e, o->e->k, o->e->j, o->e->i, o->e->h, o->e->g);
  }
}
