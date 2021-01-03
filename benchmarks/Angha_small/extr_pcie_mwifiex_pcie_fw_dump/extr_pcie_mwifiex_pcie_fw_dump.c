a, b;
*c;
d() {
  int e, f;
  long g = 0;
  if (b) {
    e = c;
    f = 0;
    for (; f < 4; f++) {
      h(e);
      g |= e++;
    }
  } else
    g = a;
  if (g)
    i();
}
