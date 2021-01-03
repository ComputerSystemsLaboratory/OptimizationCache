a, b, c, e;
*d;
void f() {
  int g;
  if (b && h())
    return;
  b++;
  for (; e; g++)
    i();
  for (; g < e; g++) {
    if (c && g > a)
      i();
    if (c || d[g])
      j();
  }
}
