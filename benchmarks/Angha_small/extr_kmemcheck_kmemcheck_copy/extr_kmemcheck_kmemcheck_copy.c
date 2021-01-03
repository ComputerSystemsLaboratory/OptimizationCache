a;
b() {
  int c[8];
  int *d;
  unsigned e, f = c;
  if (d)
    g();
  else {
    e = 0;
    for (; e < f; ++e)
      c[e] = a;
  }
  if (d)
    g();
  for (; e;)
    c[e] = a;
  if (d)
    g();
  for (; f;)
    d[e] = c;
}
