struct {
  long a
} * b;
c, d;
e() {
  for (;;) {
    if (f())
      continue;
    for (; d < c;) {
      g();
      break;
    }
    for (; d < c; d++) {
      d &&h();
      d = 0;
      for (; d < c; d++)
        if (b[d].a)
          for (;;)
            ;
    }
  }
}
