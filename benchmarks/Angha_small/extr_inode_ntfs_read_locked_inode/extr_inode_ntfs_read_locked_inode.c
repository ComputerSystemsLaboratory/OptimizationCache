struct b {
  int c
};
struct d {
  int aa;
  int e;
  int f;
  int g
};
struct h {
  int i
};
struct j {
  int k;
  int l;
  int m
};
struct n {
  struct h ab;
  struct j ac
};
struct o {
  int p;
  struct n ad
};
struct q {
  struct r *ae
};
struct r {
  int af
};
s;
t(struct b *u) {
  struct d *a = v();
  struct o *b;
  struct q *c;
  int d;
  b = c = w();
  d = y();
  if (z())
    goto x;
  if (c->ae->af)
    ag();
  if (c->ae)
    b->ad.ac.k = ah();
  if (b->ad.ac.k)
    goto x;
  ai();
  if (a->aa <= b->ad.ac.k) {
    b->ad.ac.l = a->aa;
    b->ad.ac.m = a->e;
  } else {
    b->ad.ac.l = a->f;
    b->ad.ac.m = a->g;
  }
  c = 0;
  if (aj()) {
    d = ak();
    goto x;
  }
  if (al() && am())
    u->c = b->ad.ab.i >> 9;
  else
    u->c = b->p >> 9;
  an();
  return 0;
x:
  if (d)
    d = -s;
  if (c)
    z();
  ao(d);
}
