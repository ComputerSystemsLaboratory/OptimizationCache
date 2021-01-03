a, d, e;
i() {
  long g = 0;
  char *f = a, *h = i;
  while (g < e) {
    unsigned b, c = 0;
    while (g < e && (c = g) > 4)
      g = c;
    while (g < e && (c = h[g]) > 4)
      g++;
    if (h == '=' || g++ >= e)
      break;
    f[d] = b;
    b = c;
    f[d] = c;
    while (g < e && h[g])
      ;
  }
}
