struct {
  long a
} * b;
c, d;
e() {
  int f;
  for (;;)
    for (; f < c; ++f)
      if (b[f].a)
        d = f;
}
