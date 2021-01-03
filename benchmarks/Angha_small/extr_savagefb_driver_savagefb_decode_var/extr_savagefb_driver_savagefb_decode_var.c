struct a {
  int b;
  int c;
  int d;
  int e
};
struct f {
  int g;
  long chip
};
struct {
  int h;
  int i;
  int j;
  int k;
  int l
} * m;
struct n {
  int o
} p();
q(struct n *r, struct f *t) {
  struct a s;
  p(&s);
  s.c = s.b + r;
  s.e = s.d + r;
  t->g = r;
  if (r->o == 6 && t->chip) {
    s.b *= 2;
    s.c *= 2;
    s.d *= 2;
    s.e *= 2;
  }
  switch (r->o) {
  case 8:
    if (t->chip)
      m = 0;
    break;
  case 5:
    u(t->chip);
  }
  m->i = m->j = m->k = m->l = 6;
}
