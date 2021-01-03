*a, *e;
b, c, d, f;
g() {
  int h;
  for (;;) {
    for (; b;) {
      e = a;
      break;
    }
    if (e)
      break;
    h++;
  }
  for (; c;) {
    f = &d + h;
    i();
    h++;
  }
  f = &d + h;
  j(f, h);
}
