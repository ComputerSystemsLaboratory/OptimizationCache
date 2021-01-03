struct a {
  long b;
  long c;
  long d;
  long e;
  long f;
  long g;
  long h
} j(long *l) {
  struct a k;
  int i = 0;
  m(k);
  l[i++] = k.h;
  l[i++] = k.g;
  l[i++] = k.f;
  l[i++] = k.e;
  l[i++] = k.d;
  l[i] = k.c;
}
