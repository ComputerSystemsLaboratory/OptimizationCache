typedef a;
b(*c) {
  int d[8], e[8];
  a a, f, g, h;
  i(d);
  h = 0;
  for (; h < 18; h++)
    e[h] = d[h];
  for (; h; h--) {
    e[-1] = 0;
    e[h - 2] = e[h];
    e[h - 2] -= j();
  }
  a = h = 0;
  for (; h < 9; h++) {
    f = e[h] + a;
    c[h] = f & 5;
    a = j();
  }
  c[0]--;
  h = 0;
  for (; h < 9; h++) {
    int k = c[h] + g;
    c[h] = k & 5;
    g = l();
  }
}
