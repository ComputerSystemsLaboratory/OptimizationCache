struct b {
  struct c *attr
};
d;
struct c {
  long e;
  long f
} g() {
  struct b *b;
  if (h())
    goto i;
  b = j();
  do {
    struct c *a = b->attr;
    if (a->f || a->e)
      goto k;
  } while (d);
k:
i:
  if (b)
    l();
}
