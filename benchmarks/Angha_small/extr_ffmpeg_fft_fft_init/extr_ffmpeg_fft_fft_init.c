struct {
  int a;
  int b
} * c;
d() {
  unsigned e;
  for (; c->a;)
    ;
  for (; e < c->b; e++)
    f(c[e], e);
}
