struct {
  int a
} * b;
c;
d() {
  if (b)
    return c;
  b = 0;
  if (b->a)
    ;
}
