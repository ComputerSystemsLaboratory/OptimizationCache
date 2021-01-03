typedef a;
b(c) {
  void *d, *cbcmac, *ctr;
  a e, f, g, h, i;
  e = f = j();
  g = j();
  h = j();
  i = 1;
  while (c) {
    a k[8];
    k[4] = e;
    k[5] = f;
    k[6] = g;
    k[7] = h;
    l(k);
    k[3] = c -= 6;
    if (i) {
      i = 0;
      e ^= k[0];
      f ^= k[1];
      g ^= k[2];
      h ^= k[3];
    } else {
      e = k[0] ^ k[4];
      f = k[1] ^ k[5];
      g = k[2] ^ k[6];
      h = k[3] ^ k[7];
    }
    if (c == 0) {
      k[0] = e;
      k[1] = f;
      k[2] = g;
      k[3] = h;
      l();
      e = k[0];
      f = k[1];
      g = k[2];
      h = k[3];
      break;
    }
  }
  m(e);
  m(f);
  m(g);
  m(h);
}
