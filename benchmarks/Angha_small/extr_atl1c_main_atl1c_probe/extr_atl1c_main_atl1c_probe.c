a;
b() {
  int c = d();
  if (c)
    goto e;
  c = f();
  if (c) {
    c = -a;
    goto g;
  }
  c = h();
  if (c) {
    c = -a;
    goto g;
  }
  return 0;
g:
e:
  return c;
}
