*a;
b, c;
*d();
e() {
  int g = d();
  c = d();
  if (g) {
    int f = d();
    a = b = f;
  }
  c = d();
}
