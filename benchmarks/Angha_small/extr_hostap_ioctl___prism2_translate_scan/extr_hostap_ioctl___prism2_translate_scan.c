struct a {
  long b
};
struct c {
  struct a d;
  int e;
  int f
};
g, h, i, l;
j() {
  struct c a;
  bssmemcpy(a.f);
  if (i)
    a.e = h;
  else
    a.e = g;
  if (l) {
    memset(&a, 0, sizeof(a));
    a.d.b = l;
    k(&a);
    memset(&a, 0, sizeof(a));
    a.d.b = l;
  }
}
