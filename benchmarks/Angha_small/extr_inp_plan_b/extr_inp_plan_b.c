a() {
  int b;
  char *c = &b;
  while (c)
    if (c[b - 1])
      c[b - 1] = c;
}
