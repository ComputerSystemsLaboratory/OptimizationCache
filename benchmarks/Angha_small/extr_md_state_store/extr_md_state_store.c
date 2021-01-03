a, b, c;
long d() {
  int e = a;
  if (c)
    if ((e = b) == 0)
      f();
  return e ?: d;
}
