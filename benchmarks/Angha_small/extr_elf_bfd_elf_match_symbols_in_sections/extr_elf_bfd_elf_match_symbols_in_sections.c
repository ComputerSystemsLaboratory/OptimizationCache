struct a {
  int aa
};
b, c, d;
*e();
f() {
  int g, h;
  struct a *i, *j;
  int a = i = e();
  j = e();
  if (i == 0) {
    g = k();
    if (g == 0)
      goto ae;
    if (c)
      i = l();
  }
  if (i == 0 || j)
    d = i;
  if (j->aa)
    h = m();
  for (; d;)
    goto ae;
  a = b;
ae:
  if (h)
    n(h);
  if (g)
    n();
  return a;
}
