struct {
  int a;
  void *b
} * c;
void *d;
e() {
  if (c)
    c->b = d;
  f(d);
}
