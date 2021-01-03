struct a {
  int b
};
c, d;
e() {
  struct a *f = c;
  switch (d) {
  case 1:
    f->b = 3;
  case 2:
    f->b %= 2;
  }
  f->b++;
}
