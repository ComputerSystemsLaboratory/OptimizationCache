*a;
b, d, e;
c[];
h() {
  int f[7];
  int g;
  for (; g < 257; g++)
    f[g] = 0;
  a++;
  g = 0;
  for (; g < 256; g++)
    c[g] = f[g];
  g = 1;
  for (; g < 257; g++)
    f[g] = 0;
  if (b)
    for (; g;) {
      e = a;
      if (e)
        i();
      d = e;
    }
}
