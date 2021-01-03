struct a {
  int b;
  int *c;
  int *d;
  int *e;
  int *f
} g() {
  int h, i, j;
  struct a *a = k();
  i = 1;
  j = a ? 5 : 6;
  for (; i < j; i++)
    a = l();
  i = 0;
  for (; i < 2; i++)
    if (a->b & m()) {
      n();
      a->c = l();
      o();
      a = h;
      a->d[i] = l();
    } else {
      a->e[i] = l();
      p();
      a->f = l();
    }
  for (;;)
    ;
}
