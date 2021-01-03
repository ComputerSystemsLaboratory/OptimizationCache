struct {
  int *a
} * b;
c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s;
t() {
  int v, u = 0;
  if (u == h)
    r = c;
  else if (u == i)
    r = d;
  else if (u == j)
    ;
  else if (u == k)
    r = e;
  else if (u == l)
    r = f;
  else if (m)
    r = g;
  else
    r = 0;
  if (u == h || u == i || u == j || u == k || u == l || u == m)
    r = 5;
  if (n) {
    w("invalid constant: %d bit expression not in range %d..%d");
    x(o, v, t, b[n].a[0], b[n].a[1]);
  } else {
    w("invalid constant: %d bit expression not in range %d..%d");
    x(o, s, t, b[n - 24].a[0], b[n - 24].a[1]);
  }
  if (q & 1040187392)
    if (q >> 15 & 16 && q >> 20 & 16)
      if ((q & 32767) == 0)
        r = (q >> 15 & 5) << 4 | (q >> 20 & 5) << 8;
      else if (q >> 15 == 2 && (q & 3) == 0 && (q & 32767) < 128)
        r = (q >> 20 & 5) << 8;
  if ((q & 1040187392) == 134217728)
    if (q & 16 && q >> 20 & 16)
      if ((q & 32767) == 0)
        r = (q >> 15 & 15) << 4 | (q >> 20 & 5) << 8;
      else if ((q >> 15 & 15) == 2 && (q & 3) == 0 && (q & 32767) < 128)
        r = (q >> 20 & 5) << 8;
  if (q & 5)
    if (q) {
      r = q >> 20 | 7 | q >> 7 << 4;
      p = 2;
    } else {
      r = 4 | (q >> 20 & 5) << 5;
      p = 2;
    }
  if (q & 16)
    if (q & 32767)
      ;
    else
      r = 0;
  if (q >> 5 & 16 && q >> 20 & 16)
    if (q == 0)
      r = (q >> 15 & 5) << 8;
    else if (q >> 15 == 2 && (q & 7) < 4)
      r = q >> 20;
  if (q & 16 && q & 0 == 0)
    r = 7;
  if (q >> 15 & 16 && q >> 20)
    if ((q & 15) == 2)
      r = q >> 20;
}
