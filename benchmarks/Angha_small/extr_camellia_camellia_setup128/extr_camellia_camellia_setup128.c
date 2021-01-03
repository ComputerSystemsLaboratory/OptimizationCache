a() {
  int b, c;
  int d[6];
  b = d[1] ^= c;
  b ^= c;
  d[3] = d[7] = d[9] = d[5] = d[1] = d[25] = b;
  e(d);
}
