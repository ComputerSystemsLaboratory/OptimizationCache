struct {
  int b;
  int c;
  int d
} * f;
e, i, g, h;
j() {
  unsigned a = 0;
  int b = 0;
  if (f)
    b++;
  if (h)
    a = b++;
  f = b / g;
  f->d = e;
  if (i)
    f->d = a;
}
