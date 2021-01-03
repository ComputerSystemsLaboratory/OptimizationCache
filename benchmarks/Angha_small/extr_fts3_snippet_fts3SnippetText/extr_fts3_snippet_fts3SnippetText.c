a, b, c;
d() {
  int e;
  while (e) {
    if (a)
      break;
    if (c)
      e = f();
    if (a < b)
      continue;
    if (b)
      g();
    if (a)
      g();
    if (e == a)
      g();
    if (a)
      e = 0;
  }
}
