struct {
  int a;
  void *b;
  void *c
} * d;
e() { int f = d->c = d->b; }
