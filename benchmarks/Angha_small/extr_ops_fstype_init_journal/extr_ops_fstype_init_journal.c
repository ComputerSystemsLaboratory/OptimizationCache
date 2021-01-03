a, b, c, d;
i() {
  int f = 1, e;
  if (a) {
    f = 0;
    goto g;
  }
  if (d)
    goto h;
  e = j();
  if (e)
    for (; c;)
      ;
g:
  if (b)
    k();
h:
  l();
  if (f)
    k();
  return e;
}
