a, b, c, d, e;
f() {
  if (d)
    g(0);
  else
    g(1000);
  for (; b;) {
    h();
    if (c)
      break;
  }
  if (e == b)
    i();
  for (; b;) {
    j();
    if (a)
      break;
  }
  if (d == b)
    i();
}
