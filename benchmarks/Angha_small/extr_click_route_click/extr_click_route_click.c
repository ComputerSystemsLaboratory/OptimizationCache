a;
b() {
  int c = a ?: d();
  if (c && a)
    e();
}
