struct a {
  long b;
  int c;
  int *buffer
} d(void *e) {
  struct a *a = e;
  if (g())
    a = 0;
  else
    a->c = 2;
  int f = a->buffer;
  h(f, a);
}
