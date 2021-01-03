struct a {
  long b;
  long c;
  int *batch;
  int *d
};
struct {
  long b;
  long c
} e;
f, g, h, i;
j() {
  struct a a;
  f || 0;
  k(a);
  a.b = e.b;
  a.c = e.c;
  if (h)
    l();
  if (h & g)
    i = m();
  if (i)
    a.d = a.batch;
}
