a() {
  int b = 0;
  for (; b < 95; b++)
    c();
  c(0);
  b = 0;
  for (; b < 128; b++)
    d();
}
