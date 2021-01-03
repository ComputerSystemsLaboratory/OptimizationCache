struct a {
  long d;
  long e;
  long f;
  long ac;
  long g;
  long h
};
struct i {
  long c;
  long a;
  long ab;
  long f;
  long ac;
  long g
};
struct j {
  long ac;
  long ab;
  long d;
  long e;
  long b
};
struct k {
  int l;
  int m;
  struct a n;
  struct i o;
  struct j p
};
q, r;
struct s {
  long t;
  int d
} u(struct s *v) {
  struct k *k = v;
  long a = k->p.ac;
  w(k->p);
  long d = (k->p.d ^ k->l) > 0;
  long e = k->p.e ^ k->l;
  x(k->p.b);
  if (k->m || k->n.e)
    k->n.e = 1 - e + d;
  if (k->p.ab || k->n.f) {
    if (k->o.ab)
      q = k;
    if (k->o.f)
      r = q;
  }
  if (k->n.ac)
    if (k->o.ac)
      r = a;
  if (k->n.g)
    if (k->o.g)
      k->n.h = w;
}
