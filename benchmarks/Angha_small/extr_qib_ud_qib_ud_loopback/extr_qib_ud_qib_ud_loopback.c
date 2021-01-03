struct a {
  int b
};
struct c {
  long d;
  int e
} * f;
long g;
h() {
  struct a *i;
  struct c j;
  i = k();
  if (i->b > 1)
    if (l())
      m();
  if (i->b) {
    long n = g ? f : g;
    l(n);
  }
  memset(&j, 0, sizeof j);
  j.d = sizeof(int);
  o(&j);
}
