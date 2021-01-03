a, b;
c() {
  int d = e();
  if (d)
    goto f;
  if (a) {
    d = c;
    goto f;
  }
  if (b)
  f:
    if (b)
      g(d);
}
