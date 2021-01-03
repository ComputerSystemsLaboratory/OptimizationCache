struct {
  int b
} * g;
c, d, e, f, h, i, j, k, l, m;
n() {
  int a = 0;
  if (m)
    a++;
  if (l)
    if (k || m != k)
      a++;
  if (d)
    if (l != f && e)
      a++;
  if (c)
    a++;
  if (a)
    return 2;
  if (j)
    if (l == f)
      if (i < g->b)
        a++;
  if (h > g)
    if (a)
      return 4;
  return 0;
}
