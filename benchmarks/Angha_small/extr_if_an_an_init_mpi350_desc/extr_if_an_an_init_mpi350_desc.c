struct a {
  int b;
  long d;
  long e;
  void *f;
  long g;
  long h;
  long j
};
struct k {
  int b;
  long d;
  long e;
  void *f;
  long g;
  long h;
  long j
};
struct l {
  int b;
  long d;
  long e;
  void *f;
  long g;
  long h;
  long j
} * m;
n, o;
*p, *q, *r, *s;
bzero(*, int);
t() {
  struct l u;
  struct k v;
  struct a w;
  int i, a;
  for (; o;)
    ;
  for (; n; a++)
    bzero(&v, sizeof(v));
  v.f = p;
  v.j = v.d = s;
  i = 0;
  for (; i < sizeof(v) / 4; i++)
    x(q + a + i * 4, ((int *)&v)[i]);
  for (; o; c(w))
    ;
  w.h = w.g = w.f = w.d = s;
  i = 0;
  for (; i < sizeof(w) / 4; i++)
    x(r + a + i * 4, ((int *)&w)[i]);
  u.b = u.e = u.d = s;
  i = 0;
  for (; i < sizeof(u) / 4; i++)
    x(m + i * 4, ((int *)&u)[i]);
}
