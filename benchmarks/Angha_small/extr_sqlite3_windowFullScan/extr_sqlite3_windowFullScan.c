struct a {
  long b;
  int c;
  struct a *e
} * h;
f, g;
i() {
  struct a *j;
  struct a d = *h;
  g = &d;
  for (; j; j = j->e)
    if (d.b) {
      if (d.c)
        k();
      if (d.b == f)
        l();
    }
}
