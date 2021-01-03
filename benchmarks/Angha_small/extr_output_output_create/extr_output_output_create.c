struct a {
  long b
};
struct c {
  int d;
  struct a e;
  int *f;
  int *g
};
struct h {
  long aa
};
struct j {
  struct h k;
  struct l *m
};
struct l {
  int g
} n;
o, p, a, b, c, d, e, f, g;
q(struct j *r) {
  struct c *h;
  unsigned i;
  h = s();
  i = 0;
  for (; i < 8; i++)
    h->g[i] = r->m[i].g;
  switch (h->d) {
  case 3:
    h->f = &e;
    break;
  case 9:
    h->f = &f;
    break;
  case 8:
    h->f = &g;
    break;
  case 4:
    h->f = &a;
    break;
  case 2:
    h->f = &b;
    break;
  case 6:
    h->f = &o;
    break;
  case 7:
    h->f = &n;
    break;
  case 5:
    h->f = &p;
    break;
  case 0:
    h->f = &d;
    break;
  case 1:
    h->f = &c;
    break;
  default:
    h->f = &c;
  }
  if (r->k.aa && h->f != &c)
    h->e.b = 0;
}
