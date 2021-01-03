struct {
  long a
} * b;
c, d, e;
f() {
  switch (e) {
  case 9:
    d = b->a;
    break;
  default:
    g();
  }
  if (b)
    c = 0;
}
