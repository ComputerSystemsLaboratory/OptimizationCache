struct a {
  int b
};
c, d, e, f, g;
h() {
  struct a *a = i();
  int j, k;
  j = e;
  switch (a->b) {
  case 1:
    if (e & 2)
      j &= 3;
    else
      j &= 5;
    break;
  case 9:
    j &= 5;
    break;
  case 8:
    if (d || l())
      k = 5;
    else
      k = 45;
    j &= k;
    break;
  default:
    if (g)
      j &= 5;
    else
      j &= 55;
  }
  if (a && f || !a && c)
    m(j);
}
