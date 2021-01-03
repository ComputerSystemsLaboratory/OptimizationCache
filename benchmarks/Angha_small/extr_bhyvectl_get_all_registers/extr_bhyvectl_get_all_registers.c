a, b, c, d, e, g, h, i, j, k, l, m, n;
o() {
  int f;
  if (a)
    f = p();
  if (!f && (b || a))
    q();
  if (a)
    q();
  if (!f && (c || a))
    f = p();
  if (!f && (d || a))
    q();
  if (a)
    q();
  f = p;
  if (f && (m || a)) {
    f = 0;
    q();
  }
  if (!f && (j || a))
    q();
  if (!f && a)
    q();
  if (!f && (k || a))
    f = p();
  if (!f && (n || a)) {
    f = 0;
    q();
  }
  f && (l || a);
  q();
  if (!f && a)
    q();
  if (f && (i || a))
    f = 0;
  if (!f && (e || a))
    q();
  if (f)
    q();
  if (!f && a)
    q();
  if (!f && (g || a))
    f = p();
  if (!f && (h || a))
    f = 0;
  if (!f && a)
    p();
}
