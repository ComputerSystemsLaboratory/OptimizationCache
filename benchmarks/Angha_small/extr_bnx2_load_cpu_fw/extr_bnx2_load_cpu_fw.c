struct a {
  int addr
};
b(struct a *c) {
  int d = e();
  if (d) {
    int f = 0;
    for (; f < d / 4; f++)
      g();
  }
  d = e;
  if (d)
    for (; d / 4;)
      ;
  e(c->addr);
  if (d)
    for (;;)
      ;
}
