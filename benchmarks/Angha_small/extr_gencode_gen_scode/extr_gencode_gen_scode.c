a, b, c;
d() {
  if (a < 0)
    e();
  if (a)
    e();
  f(a);
  if (b)
    e();
  if (b)
    if (c)
      e();
  if (c)
    e();
  g(c);
}
