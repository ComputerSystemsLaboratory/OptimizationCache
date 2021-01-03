a, b;
c() {
  int d;
  b = c;
  if (b)
    for (; b; d++) {
      d = 0;
      for (; a; d++)
        ;
    }
}
