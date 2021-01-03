*a;
b() {
  int c, e = 0;
  int d[4];
  for (; e < 14; e++)
    d[e] = f(a[e]);
  g(&c);
  e = 0;
  for (; e < 14; e++)
    h(a[e], d[e]);
}
