e() {
  char b;
  int d, c;
  char *a = &b;
  for (; *a;) {
    if (g())
      continue;
    if (a[1]) {
      while ((c = *a) && c != '\n')
        a++;
      continue;
    }
    if (a == '*') {
      d++;
      a++;
      continue;
    }
    a++;
    for (; c = a;) {
      d++;
      if (c == '/' && a[1]) {
        int f;
        while ((c = a) && (c != '/' || f))
          f = a++;
      }
    }
    h(d);
    *a = 0;
  }
}
