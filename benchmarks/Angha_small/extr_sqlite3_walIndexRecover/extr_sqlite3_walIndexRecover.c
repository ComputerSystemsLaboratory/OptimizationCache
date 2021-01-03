a, b, c, d, e;
volatile f;
g() {
  int h;
  {
    long i[c];
    if (b)
      goto j;
    if (d)
      goto finished;
    if (e) {
      h = a;
      goto j;
    }
    h = k();
  }
finished:
  f;
j:
  l(h);
}
