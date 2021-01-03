a;
b();
long c(d) {
  long e, f, g;
  int h, i;
  int k[] = {5, 5, d, 0, 5, 5};
  h = 0;
  for (; h < 3; h++) {
    i = l(k[h]);
    g = c();
    l(g + i);
    f = c();
    l(f + i);
    e = c();
    l(e + i);
  }
  h = 0;
  for (; h < 2; h++) {
    int j;
    i = a;
    j = 0;
    for (; j < a; j = 4)
      m(b + i + j);
  }
}
