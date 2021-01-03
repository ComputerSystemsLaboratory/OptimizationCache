a;
b() {
  char c[a];
  for (;;) {
    c[3] ^= 5;
    d(c);
  }
}
