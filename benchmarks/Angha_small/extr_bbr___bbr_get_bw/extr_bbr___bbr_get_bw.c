struct {
  int a
} * b;
c, d, e;
f() {
  if (b)
    if (d && d < 0xffffffff)
      c = b;
    else
      c = b->a;
  if (e) {
    if (d && d < 0xffffffff)
      g();
    if (1 > b->a)
      return 0;
    return b->a;
  }
  h();
}
