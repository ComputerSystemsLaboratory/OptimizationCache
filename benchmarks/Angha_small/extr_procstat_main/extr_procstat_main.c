a, b, c, d, e;
f() {
  switch (c) {
  case 'b':
    if (b & a)
      g();
    b |= a;
  }
  if (!(d == 1) && !(d && e))
    g();
}
