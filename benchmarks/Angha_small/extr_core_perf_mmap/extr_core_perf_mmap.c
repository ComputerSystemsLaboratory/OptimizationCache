a, b, d, e, f;
*c;
g() {
  if (d)
    a = c;
  if (c) {
    e = a;
    goto h;
  }
  if (b)
    f = 0;
h:
  if (a)
    i();
  return a;
}
