a, b, c, d, e, f, h;
*g;
i() {
  int j;
  for (; a;)
    for (; j >= a; j--)
      if (g[j]) {
        if (h - j) {
          k();
          h = j - 1;
        }
      } else
        h = j - 1;
  j = c;
  for (; j < f; j += 2) {
    g = j;
    l(j);
  }
  for (; j <= d; j++)
    if (g[j])
      if (j - h) {
        k();
        h = j + 1;
      } else
        h = j + 1;
  for (; j < f; j += 2) {
    g = j;
    l(j);
  }
  if (j)
    j = b;
  for (; j <= e; j++)
    if (g[j])
      k(j);
}
