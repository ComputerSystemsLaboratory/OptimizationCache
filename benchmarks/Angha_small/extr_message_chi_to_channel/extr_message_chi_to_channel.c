b(*f) {
  int c, d, e, a;
  if (f[1]) {
    d = 1;
    for (; f && f[d]; d++)
      ;
    if (d == 4) {
      for (; f[0] && f[c]; c++)
        ;
      if (f[c])
        return 254;
    }
    for (; f && f[d]; d++)
      ;
    if (f[d]) {
      d = 0;
      for (; d < 4 && f[0]; d++)
        c++;
      if (f[c])
        for (; c & 1 << a; a++)
          e |= c;
    }
    if (e != 1L << a)
      return 254;
    for (; d < f && f[d]; d++)
      ;
  }
  if (d)
    switch (f[1])
    case 8:
      return 0;
}
