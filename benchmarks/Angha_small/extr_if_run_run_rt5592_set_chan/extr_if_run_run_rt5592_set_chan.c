struct {
  long b
} * d;
c, e, f, g;
h() {
  int a = c ? f : e;
  for (; d[g].b; g++)
    i(a);
}
