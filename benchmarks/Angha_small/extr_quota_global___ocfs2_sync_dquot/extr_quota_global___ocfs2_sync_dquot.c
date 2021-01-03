a;
*b;
c() {
  int d = b;
  if (d != sizeof(int)) {
    if (d >= 0)
      d = -a;
    goto e;
  }
  f();
e:
  if (d)
    g();
  return d;
}
