a;
struct b {
  int c
} d() {
  struct b *b = e();
  b->c;
  if (a)
    b->c = 0;
  f(b->c);
}
