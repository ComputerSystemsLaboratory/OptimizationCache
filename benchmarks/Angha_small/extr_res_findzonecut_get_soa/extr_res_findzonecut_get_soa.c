a, b, c;
d() {
  int e, f, g;
  for (;;) {
    e = h();
    if (e) {
      i();
      g = a;
      e = 0;
    } else {
      c = j();
      if (b > 0)
        g = 9, e = b;
      else if (c > 0)
        g = 8, e = c;
      else
        g = a;
    }
    f = 0;
    for (; f < e; f++)
      switch (g) {
      case 9:
        k();
      case 8:
        break;
      default:
        l();
      }
  }
}
