*a;
b;
c() {
  char *d;
  long e;
  int f;
  b = 0;
  for (; a[b]; b++)
    if (a == '"') {
      f = b - 1;
      for (; f >= 0 && a[f]; f--)
        e++;
      e++;
    }
  e += b;
  g(e);
  for (;;) {
    d = f = 1;
    for (; a[f]; f--)
      *d++ = '\\';
  }
}
