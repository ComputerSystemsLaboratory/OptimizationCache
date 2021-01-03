struct {
  long b
} h;
struct c {
  struct c *d
};
e, f, g, i;
j() {
  struct c *a;
  if (f)
    for (;; a = a->d) {
      i = a ? e : g;
      k();
    }
  if (h.b)
    l();
  l(h);
}
