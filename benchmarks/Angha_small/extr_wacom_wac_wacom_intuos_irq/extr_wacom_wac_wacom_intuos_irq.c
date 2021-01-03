struct {
  int b
} c, *g;
d, f;
long e;
h() {
  char *a = g;
  if (a)
    k(0, d, 1);
  else
    k(0, d, 0);
  if (a[1])
    k(0, d, 1);
  else
    k(0, d, 0);
  if (a[2])
    k(0, c, 2);
  else
    k(0, c, 0);
  int i = 0;
  for (; i < 8; i++)
    l(e + i, a[4] << i);
  if (a[2])
    k(0, d, 2);
  else
    k(0, d, 0);
  if (f) {
    if (g->b)
      l();
  } else
    l(0j);
  if (g)
    k();
}
