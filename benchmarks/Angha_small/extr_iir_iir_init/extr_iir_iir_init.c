struct a {
  int b;
  int c
};
struct {
  int d
} * e;
f, g, h, j, k, l;
*m, *n, *o;
p() {
  int i;
  struct a *a;
  i = g - 1;
  for (; i >= 0; i--) {
    a = &m[i];
    a->b = i;
    a->c = o[j * i];
    a = j * i;
  }
  for (; i < f; i++) {
    q(a, i);
    if (r()) {
      if (i)
        s();
      break;
    }
    n[i] = 5;
  }
  for (; m && i < h; i++) {
    r(i);
    if (m)
      k = e[i].d / l;
    m = l;
  }
}
