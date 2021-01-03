a;
long b, c;
d(long *e) {
  long *f;
  if (a)
    e[0] = e[1] = 5;
  e[2] = e[3] = e[0] = 128;
  e[1] = 0;
  if (a) {
    e[0] = 128;
    e[1] = 0;
  }
  f = e;
  for (f--; c; f--)
    c = b;
  f[1] = 1 << b - 1;
  if (*e & 1 << b - 1)
    *e = 0;
}
