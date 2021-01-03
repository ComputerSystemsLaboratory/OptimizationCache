a, b;
d() {
  static *c;
  for (; b;) {
    c = b;
    break;
  }
  if (c)
    return a;
  return 0;
}
