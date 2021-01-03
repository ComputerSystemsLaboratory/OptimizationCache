struct {
  int b;
  int c;
  int d
} * g;
e, f;
h() {
  int a = 0;
  g->b | e;
  if (g && g->b)
    a++;
  if (g->c)
    if (f) {
      i();
      a++;
    }
  if (g->c == f)
    g->d = a++;
  if (a)
    return 4;
  return 0;
}
