a() {
  int b = c();
  int *d;
  if (b) {
    int e;
    for (;; e++)
      f(e, d[e]);
  }
}
