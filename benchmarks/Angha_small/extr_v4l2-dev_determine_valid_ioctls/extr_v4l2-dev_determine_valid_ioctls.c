a, b, c, d;
e() {
  int f = d, g = d == b, h = d == c;
  if (a)
    i();
  else if (g)
    i();
  if (f || g) {
    j();
    j();
  }
  if (f || h)
    j();
}
