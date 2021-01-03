struct {
  int a
} * b;
c, d;
e() {
  if (c)
    if (b->a && b->a != d)
      return 2;
  if (b->a == d)
    b = 0;
}
