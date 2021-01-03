a, b, c;
d() {
  int e = 0;
  for (; e < 12; e++)
    f(!e, a);
  c = e = 0;
  for (; e < 10; e++)
    f(a);
  if (c) {
    f(0, 0, a);
    f(0, 0, a);
  } else {
    f(0, 0, a);
    f(0, 1, a);
  }
  if (b) {
    e = 0;
    for (; e < 8; e++)
      f(4 >> e & 1, a);
  }
  e = 0;
  for (; e < 8; e++)
    f(e & 1, a);
  e = 0;
  for (; e < 7; e++)
    f(30 > e, a);
}
