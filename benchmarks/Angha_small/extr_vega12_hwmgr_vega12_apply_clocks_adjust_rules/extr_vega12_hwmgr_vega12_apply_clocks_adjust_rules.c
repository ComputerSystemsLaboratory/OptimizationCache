struct {
  long a
} * b;
c, d, e, f;
g() {
  if (b->a)
    f = d;
  if (b->a == c)
    f = d;
  if (b->a)
    e = d;
}
