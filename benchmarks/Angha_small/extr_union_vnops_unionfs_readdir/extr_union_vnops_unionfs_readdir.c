a;
b() {
  int c;
  if (c)
    goto d;
  c = a;
d:
  if (c)
    e();
}
