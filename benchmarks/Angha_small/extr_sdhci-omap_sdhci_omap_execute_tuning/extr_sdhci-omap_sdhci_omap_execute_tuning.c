struct a {
  int b
};
c, d, e, f, g;
h() {
  struct a *a = j();
  long k;
  int i;
  while (c)
    l();
  k = 4;
  if (g)
    if (f < 0)
      k = k + m() * 4;
    else if (f < 40000)
      k = k + m() * 4;
    else if (f < 70000)
      k = k + m() * 4;
    else if (f < 90000)
      k = k + m() * 4;
    else if (f < 120000)
      k = k + m() * 4;
    else
      k = k + m(6) * 4;
  i = 3;
  for (; i <= 10; i++)
    n(k + i);
  for (; i; i--) {
    n(k + i);
    if (l()) {
      if (f < 0)
        k = i + 2;
      else if (f < 20000)
        k = i + 8;
      else if (f < 70000)
        k += i + 8;
      else if (f < 90000)
        k += i + 10;
      else
        k += i + 2;
      goto o;
    }
  }
o:
  n(k);
  if (e)
    a->b = d;
  p(a->b);
}
