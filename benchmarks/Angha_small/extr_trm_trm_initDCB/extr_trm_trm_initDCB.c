struct a {
  void *b
};
struct c {
  int d
};
struct e {
  struct a aa;
  struct c f;
  int g
};
struct {
  int h;
  int i;
  struct e j;
  int k
} * l;
*m, *s, *t;
n, o, p, q, r, u, v, w;
x() {
  long y;
  if (l->h)
    l->j.g = p;
  else
    l->j.g &= ~p;
  if (o)
    l->j.g = q;
  else
    l->j.g &= ~q;
  if (u) {
    l->k = s[y];
    l->j.f.d = l->k;
    w = l->i & 1;
  } else {
    l->k = t[y];
    l->j.f.d = l->k;
    w = l->i & n;
  }
  l->i = r;
  v = l ?: m;
  l->j.aa.b = m;
}
