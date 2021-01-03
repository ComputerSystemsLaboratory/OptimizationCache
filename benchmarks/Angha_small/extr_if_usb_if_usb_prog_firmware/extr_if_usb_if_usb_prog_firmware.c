struct a {
  int b;
  long c;
  long d;
  long e
} * f;
g() {
  struct a *a = f;
  a->e = a->d = a->c = 0;
  if (h())
    ;
  a->d = a->e = 0;
  a->b = 1;
  a->d = a->c = 0;
}
