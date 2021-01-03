struct a {
  int b;
  int *c;
  int *d;
  int *e
};
f, g, h;
j() {
  struct a *a;
  int i;
  a = k();
  for (; i < h; i++)
    l(a[i]);
  l(a[h]);
  if (a)
    goto m;
  for (; h;)
    a->e[0] = a;
  for (; g;)
    a->d[0] = a;
  for (; f;)
    a->c[0] = a;
  for (;;)
    n(a->b);
m:;
}
