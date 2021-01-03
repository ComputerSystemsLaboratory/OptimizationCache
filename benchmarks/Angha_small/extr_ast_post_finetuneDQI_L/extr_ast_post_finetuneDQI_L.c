g() {
  int b[6], c[6], a, d;
  int e;
f:
  for (a = 0; a < 16; a++)
    b[a] = c[a] = 0;
  for (;;) {
    h();
    a = 0;
    for (; a < 6; a++)
      if (b[a])
        a = 0;
    if (d)
      break;
  }
  a = 0;
  for (; a < 16; a++)
    if (c[a] && -b[a] >= g) {
      e += b;
      d++;
    }
  goto f;
}
