a, b, c, d, e;
f() {
  int g[2];
  int h = 0;
  long i;
  long *j;
  if (e)
    h = 1;
  if (d) {
    g[b] = 5;
    if (h)
      for (; c;)
        ;
  }
  for (; b <= c;) {
    j = &g[1];
    i = 0;
    for (; i < 4; i++) {
      if (*j)
        *j = a;
      j++;
    }
  }
}
