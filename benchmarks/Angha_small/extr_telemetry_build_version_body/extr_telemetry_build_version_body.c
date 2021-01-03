struct a {
  void *b;
  void *c
} * d;
*e, *f;
g;
h() {
  struct a i, j;
  j.c = e;
  j.b = strlen(e);
  k(&j);
  if (g) {
    i.c = d;
    i.b = strlen(d);
  }
  i.c = f;
  i.b = strlen(f);
  k(&i);
}
