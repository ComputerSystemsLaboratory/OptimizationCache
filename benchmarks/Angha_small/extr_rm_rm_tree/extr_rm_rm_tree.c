a, b, c, d, e, f, g;
j() {
  int i, h;
  i = f || c && d && e;
  h = b;
  if (i)
    h |= a;
  k(h);
  switch (g)
  case 0:
    if (i)
      l();
}
