struct a {
  int b
};
c() {
  struct a *d = e();
  if (d) {
    for (; 0 < d->b;)
      if (f())
        break;
    if (0 == d->b)
      g();
  }
}
