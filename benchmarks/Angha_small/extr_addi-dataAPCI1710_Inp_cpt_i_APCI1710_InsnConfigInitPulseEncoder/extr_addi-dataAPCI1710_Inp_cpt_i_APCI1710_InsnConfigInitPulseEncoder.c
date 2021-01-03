struct {
  int a
} * b, *c;
unsigned char d;
*e;
f() {
  unsigned char g;
  d = g = e;
  if (e)
    h(f + d + g * 4);
  b = 1UL << 8 + g | 1UL << 4 + g;
  c[g].a = 1;
}
