struct a {
  long b
};
c;
d() {
  struct a *b;
e:
  b = c;
  f(b->b);
  if (c)
    goto e;
  g(b->b);
}
