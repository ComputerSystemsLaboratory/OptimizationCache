a[];
b, c;
d() {
  int e, f;
  e = 0;
  for (; e < 8; e++) {
    f = e * 112 & 1023;
    if (f < 256)
      b = f & 255;
    c = a[e];
    g(e, b);
    h(e << 10);
  }
}
