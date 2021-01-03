struct a {
  long b
};
struct {
  int c;
  float d;
  float e;
  float f
} * g;
struct h {
  int i;
  int j;
  float k;
  float l
};
*m;
n(struct h *o) {
  float a[31], p[4];
  int j;
  float k, l;
  struct a *b = m;
  if (o) {
    o->i;
    j = o->j;
    k = o->k;
    l = o->l;
    a[30] = g->d;
    a[1] = g->e;
    a[2] = g->f;
  }
  b->b = 0;
  if (o->i || j) {
    p[0] = a[0] * k;
    p[1] = a[1] * k;
    p[2] = a[2] * k;
    p[3] = a[3] * l;
    q(p);
  }
  q(a);
}
