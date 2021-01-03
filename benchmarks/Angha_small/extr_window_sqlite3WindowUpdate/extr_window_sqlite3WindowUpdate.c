struct {
  long a
} * b;
c() {
  if (b->a)
    d();
  if (b->a || b)
    for (;;)
      ;
}
