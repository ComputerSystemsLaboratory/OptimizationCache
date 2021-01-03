a, b, c, d, e, f, g;
h() {
  int i, j;
  switch (g) {
  case 0:
    g = a;
    break;
  case 1:
    g = b;
    break;
  case 2:
    g = c;
  default:
    -d;
  }
  for (; i; i--)
    switch (f) {
    case 1:
      e = i;
      if (a) {
        i = 0;
        for (; i < 8; i++)
          j = j + (e > i & 1);
        if (j)
          k();
      }
    }
}
