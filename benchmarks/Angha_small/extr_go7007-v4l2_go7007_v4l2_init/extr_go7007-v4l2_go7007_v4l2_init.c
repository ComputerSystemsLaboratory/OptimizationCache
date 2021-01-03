struct {
  int a
} * b;
c;
d() {
  if (b->a)
    e();
  if (b->a & c)
    e();
  if (b == b->a)
    f();
}
