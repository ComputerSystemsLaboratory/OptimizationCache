a, b, c, d, e;
h() {
  int g = a, f = i();
  if (f) {
    j();
    f = b;
  }
  if (!f && d) {
    j(d);
    if (c)
      f = b;
  }
  if (!f && (e || d))
    g = b;
  if (g)
    k();
}
