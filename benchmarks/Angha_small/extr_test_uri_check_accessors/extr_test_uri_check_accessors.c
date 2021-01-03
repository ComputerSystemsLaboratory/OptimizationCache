a;
b() {
  int c = 0;
  if (d()) {
    char e = f();
    if (a || b())
      c++;
    if (!e || b())
      c++;
  }
  if (c)
    g();
  return c;
}
