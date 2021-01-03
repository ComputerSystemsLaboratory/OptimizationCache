struct a {
  int b;
  void *c;
  void *d;
  int aa
};
struct e {
  struct a f
};
struct g {
  struct e h
};
void *i, *j, *k, *l, *m, *n, *o;
p, q;
r(struct g *s) {
  t(s->h.f.aa);
  switch (q) {
  case 8:
    if (p)
      s->h.f.c = n;
    else if (s->h.f.c && s->h.f.b == l)
      ;
    else {
      s->h.f.d = l;
      s->h.f.c = m;
    }
  case 9:
    if (p)
      s->h.f.c = n;
    else if (s->h.f.c && s->h.f.b == k)
      ;
    else {
      s->h.f.d = k;
      s->h.f.c = m;
    }
  case 0:
    if (p)
      s->h.f.c = n;
    else if (s->h.f.c && s->h.f.b == j)
      ;
    else {
      s->h.f.d = j;
      s->h.f.c = m;
    }
  case 1:
    if (p)
      s->h.f.c = n;
    else if (s->h.f.c && s->h.f.b == i)
      ;
    else {
      s->h.f.d = i;
      s->h.f.c = m;
    }
  case 2:
    s->h.f.c = o;
  }
}
