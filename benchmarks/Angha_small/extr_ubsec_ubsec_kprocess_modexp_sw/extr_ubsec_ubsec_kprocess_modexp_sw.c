struct {
  int a
} * b;
c() {
  b = d();
  if (b == 0)
    goto e;
  f();
e:
  if (b->a)
    if (b)
      ;
}
