struct {
  int b
} * n;
c, e, f, g, h, i, j, k, l, m, a, b, o;
v() {
  long p = n;
  int q, r, s, t, u, d = o;
  switch (e) {
  case 1:
    u = h;
    break;
  case 0:
    i;
  default:
    u = i;
  }
  if (f)
    if (g)
      u |= k;
    else
      u |= j;
  if (d == 9)
    u = m;
  else if (d)
    u |= l;
an:
  q = w();
  r = 1;
  if (q == 4)
    q = r = 2;
  if (d == 9)
    if (n)
      n = 2;
  switch (d) {
  case 9:
    t = s = p / (q * r) - 1;
    if (s > 0 && s <= 5)
      goto ap;
    t = s = p / (8 * r) - 1;
    if (s > 0 && s <= 5)
      goto ap;
    t = s = p / (q * 2 * r) - 1;
    if (s > 0 && s <= 5)
      goto ap;
  case 8:
    t = s = p / (q * r) / 8 - 1;
    if (s > 0 && s <= 5)
      goto ap;
    t = s = p / (q * 8 * r) - 1;
    if (s > 0 && s <= 5)
      goto ap;
    t = s = p / (q * 2 * r) - 1;
    if (s > 0 && s <= 5)
      goto ap;
    goto an;
  default:
    t = n;
  }
ap:
  x(t);
  if (c)
    if (n)
      u |= a;
    else
      u |= b;
  if (e)
    n = d;
  n->b = u;
}
