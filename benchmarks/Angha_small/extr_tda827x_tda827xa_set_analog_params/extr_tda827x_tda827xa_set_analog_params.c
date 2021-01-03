struct {
  int a;
  int b
} * c;
d() {
  int e = 0;
  while (c[e].a) {
    if (c[e + 1].a)
      break;
    e++;
  }
  f(c[e]);
}
