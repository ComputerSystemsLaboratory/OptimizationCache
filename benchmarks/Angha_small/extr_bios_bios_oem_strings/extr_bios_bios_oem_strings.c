struct {
  int a
} * b;
c() {
  if (c < 2)
    return 0;
  if (b->a)
    return 2;
  return 0;
}
