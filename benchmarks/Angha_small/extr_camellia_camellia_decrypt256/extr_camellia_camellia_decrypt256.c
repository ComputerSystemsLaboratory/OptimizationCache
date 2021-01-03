typedef a;
b(*c) {
  a d, e;
  c[0] = c[1] = c[2] = 0;
  c[3] = f();
  d = c[0];
  e = c[1];
  c[0] = c[2];
  c[1] = c[3];
  c[2] = d;
  c[3] = e;
}
