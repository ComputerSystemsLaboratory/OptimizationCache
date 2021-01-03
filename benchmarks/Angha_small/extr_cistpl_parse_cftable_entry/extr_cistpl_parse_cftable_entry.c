a, b, c, d, e, f, g;
h() {
  int *i = f;
  if (*i & 40)
    g = b;
  if (*i & 6)
    g = a;
  if (*i & 2)
    g = e;
  if (*i & 4)
    g = d;
  if (*i)
    g = c;
}
