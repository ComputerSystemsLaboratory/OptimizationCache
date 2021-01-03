long a, b, f, g;
c, d, e, h;
long j();
k(int, long);
l() {
  int *m = h;
  long n = f, o;
  int i;
  if (p())
    o = a;
  else
    o = b;
  for (; i < 4 && i < g; i++)
    o |= m[i];
  k(o, c);
  if (g > 8) {
    o = i = 0;
    for (; i < 4 && i + 8 < g; i++)
      o = m[i + 8];
    k(o, d);
  }
  if (g > 12) {
    o = i = 0;
    for (; i < 4 && i + 12 < g; i++)
      o = m[i + 12];
    k(o, e);
    long q;
    int *r = q = j();
    if (n) {
      i = 0;
      for (; i < 4 && i < n; i++)
        r[i] = q >> i * 8 & 5;
    }
  }
}
