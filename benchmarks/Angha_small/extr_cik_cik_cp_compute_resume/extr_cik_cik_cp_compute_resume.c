a, b, c, d, e, f, g, h, j, k;
l() {
  int i;
  for (;; i++) {
    if (i)
      h = a;
    else
      h = b;
    if (e) {
      m();
      if (g)
        return g;
    } else
      j = f;
    k = j;
    if (i)
      j = f + c;
    else
      j = f + d;
  }
}
