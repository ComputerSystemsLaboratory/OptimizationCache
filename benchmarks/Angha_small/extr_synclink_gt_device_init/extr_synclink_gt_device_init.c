struct a {
  int b;
  int c
};
d, e, f;
void g() {
  struct a *h[d];
  int i, j = 1;
  if (e)
    j = 2;
  else if (f)
    j = 4;
  i = 0;
  for (; i < j; ++i) {
    h[i] = k(i);
    if (h[i]) {
      for (; i;)
        l();
      return;
    }
  }
  i = 0;
  for (; i < j; ++i)
    m(sizeof(h));
  i = 1;
  for (; i < j; i++) {
    h[i]->c = h[0];
    h[i]->b = h[0]->b;
  }
  i = 0;
  for (; i < j; ++i)
    n();
}
