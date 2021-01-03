a, b, d;
*c;
e() {
  for (; d < a; d++)
    if (c) {
      f();
      d = 1;
      for (; d < a; d++)
        if (c[d])
          b = d;
    }
}
