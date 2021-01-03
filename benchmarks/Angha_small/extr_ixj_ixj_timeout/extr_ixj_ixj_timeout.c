struct a {
  int b;
  long c
};
struct d {
  int e;
  struct a f;
  struct g *h
};
struct g {
  int i
};
k;
l() {
  struct d *j = k;
  j->f.c;
  m(j && j->f.b);
  switch (j->h[5].i)
  case 7:
    n();
  if (j->h)
    j->f.b = 1;
}
