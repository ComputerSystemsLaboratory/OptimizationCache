struct {
  long addend;
  long b
} * d;
unsigned c;
h(i) {
  int b;
  unsigned f, a, e, g;
  b = d;
  for (; f < i; f++) {
    if (d[f].addend) {
      if (b)
        b = d[f].b;
      break;
    }
    b = d[f].b;
  }
  f++;
  while (i) {
    if (b) {
      c = f + 1;
      for (;; c++)
        if (d[c].addend)
          break;
      d[c].b = b;
    }
    if (c >= i)
      break;
    b = d[c].b;
    a = c + 1;
    for (; a < i; a++) {
      if (d[a].addend)
        break;
      b = d[a].b;
    }
    if (g == 1 && a < i) {
      for (; e < i; e++, c++)
        j();
      if (e < i)
        g = c;
    }
    d = b;
  }
}
