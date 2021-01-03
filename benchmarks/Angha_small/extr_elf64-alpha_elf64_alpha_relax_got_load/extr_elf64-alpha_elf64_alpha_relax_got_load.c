struct {
  int a;
  void *b
} * c, *d;
e;
void *f() {
  if (e)
    d->b = c;
  return c;
}
