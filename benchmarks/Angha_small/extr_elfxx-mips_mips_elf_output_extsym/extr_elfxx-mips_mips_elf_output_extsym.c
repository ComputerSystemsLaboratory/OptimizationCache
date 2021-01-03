struct a {
  long b;
  long c
};
struct d {
  int e;
  struct a asym
};
struct f {
  struct g *h
};
struct i {
  struct d esym;
  struct f j
};
struct g {
  long k
} typedef asection;
l, m;
long n;
*o;
p(struct i *q) {
  asection r;
  if (l)
    return m;
  if (q->esym.e) {
    r = *q->j.h;
    if (r.k)
      q->esym.asym.b = o;
    else
      q->esym.asym.b = n;
  } else {
    struct g *s;
    r = *s;
    if (r.k)
      ;
    q->esym.asym.c = 0;
  }
  if (t())
    ;
}
