a;
b(c) {
  long d, e;
  char *f = c;
  while (f[d])
    d++;
  if (f == '[') {
    e = d + 1;
    for (;; e++) {
      if (e && c)
        return 1;
      while (g(f[e]))
        e++;
      a = f[e];
      if (a) {
        a;
        break;
      }
    }
    return e + 1;
  }
  int h = 0;
  e = d + 1;
  for (;; e++) {
    if (e >= '0' && e <= '9')
      continue;
    if (e == 'e' || e == 'E') {
      if (f[e - 1])
        return -1;
      if (h)
        return -1;
      h = 1;
    }
  }
}
