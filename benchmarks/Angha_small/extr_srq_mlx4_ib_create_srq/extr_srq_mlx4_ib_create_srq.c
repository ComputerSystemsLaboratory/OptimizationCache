struct c {
  int d
};
struct e {
  int a;
  long b
};
struct f {
  int g;
  int h
};
struct j {
  int k
};
struct l {
  int m;
  long n;
  int o;
  int aa;
  int p
};
struct q {
  int r;
  struct e ab;
  struct f ac;
  int s;
  int ad;
  struct q *t;
  struct j ae;
  struct l af;
  long u;
  long ag;
  int ah
};
struct v {
  int ai
};
a, w, x;
void *y();
z() {
  struct v *b = aj();
  struct q *c;
  struct c *d;
  int e, i;
  c = y();
  ak(c);
  al(c->ah);
  c->af.n = c->af.p;
  if (w)
    am(c->ad, c->ab);
  else {
    an(c->ab);
    c->ag = 0;
    c->r = c->af.m;
    c->u = 0;
    for (; i < c->af.m; ++i) {
      ao(i + 1);
      for (; d < i; ++d)
        d->d = 0;
    }
    ap(c->ac.h, c->ac.g, c->ad);
  }
  x == a ? aq() : 0;
  e = x == a ? ar() : b->ai;
  as(b->ai, e, c->ad, c->ab);
  c->af.aa = c->ae.k = c->af.o;
  at(c->t);
  au(c->s);
  av(b->ai, &c->ac);
}
