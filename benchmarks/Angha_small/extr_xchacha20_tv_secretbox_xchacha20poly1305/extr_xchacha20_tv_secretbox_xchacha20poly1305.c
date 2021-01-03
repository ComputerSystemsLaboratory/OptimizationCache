struct a {
  int b
} c;
d() {
  long e, h = 0;
  struct a f[] = {{}, {}, {}, {}, {}};
  struct a g;
  for (; h < sizeof f / sizeof 0; h++) {
    g = *f;
    e = g.b;
    i(c, e);
    j();
  }
}
