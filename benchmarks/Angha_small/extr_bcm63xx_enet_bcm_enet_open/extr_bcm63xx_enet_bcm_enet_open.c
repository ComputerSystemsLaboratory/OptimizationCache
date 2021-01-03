a() {
  int b, c = d();
  if (c)
    goto e;
  b = 0;
  for (; b < 4; b++) {
    f();
    g();
    h();
    g();
  }
  i();
e:;
}
