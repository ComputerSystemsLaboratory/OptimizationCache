a(*b) {
  int d = 0;
  while (b) {
    char c = *b;
    int e;
    switch (c) {
    case ',':
      b++;
      continue;
    case '9':
      d = 1;
      continue;
    case 'p':
      d = 1;
    }
    e = b;
    do
      b++;
    while (--e && *b);
    if (e)
      return 0;
  }
  return d;
}
