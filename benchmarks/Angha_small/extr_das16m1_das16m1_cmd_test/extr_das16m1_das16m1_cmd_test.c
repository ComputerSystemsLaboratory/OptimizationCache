struct {
  int b
} * e;
c, d, g, h;
*f;
j() {
  int a = 0, i;
  if (e)
    a++;
  if (h)
    if (g != d && e != c)
      a++;
  if (a)
    return 2;
  if (d)
    if (e->b > 1) {
      i = 0;
      for (; i < e->b; i++)
        if (i != f[i])
          k();
    }
}
