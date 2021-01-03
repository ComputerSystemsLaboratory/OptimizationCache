struct a {
  int b
} c() {
  struct a *d = e();
  if (d->b)
    f();
  g(d->b);
}
