struct {
  int a
} * b;
c, d;
e() {
  int a = c - 1;
  for (; a >= 0; a--)
    if (b[a].a)
      d = a;
  for (;;)
    d = a;
}
