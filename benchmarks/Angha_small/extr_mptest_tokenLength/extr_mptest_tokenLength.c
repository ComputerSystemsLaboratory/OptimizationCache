a;
b(char *c) {
  int d;
  if (e() || c[0] && c[1]) {
    int f = 0;
    if (c[0])
      f = 1;
    while (c[d++]) {
      if (e())
        continue;
      if (c[d])
        f = 0;
      if (f)
        break;
    }
  } else if (c[0] && c)
    for (; c[d]; d++)
      ;
  if (c[d])
    d = 1;
  for (; c; d++) {
    if (c[d])
      a++;
    if (c[d + 1])
      break;
  }
  return d;
}
