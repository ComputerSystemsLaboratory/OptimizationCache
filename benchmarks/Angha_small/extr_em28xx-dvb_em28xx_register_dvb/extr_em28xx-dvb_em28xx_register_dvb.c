struct {
  int *a
} b;
c() {
  if (b.a)
    d();
  if (b.a[1])
    e();
  f(b);
}
