struct {
  int a;
  int b
} * c;
d, e, f;
g() {
  unsigned h;
  for (; h < d; ++h)
    if (c[h].a)
      f = -f;
  e = c[h].b;
}
