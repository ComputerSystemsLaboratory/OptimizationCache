long a;
b() {
  int c;
  for (; c < 3; ++c)
    if (c)
      a = d();
    else {
      e();
      a = f();
    }
}
