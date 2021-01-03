struct a {
  int b
};
struct c {
  int d;
  struct a e
};
f, g, h, i, k, l;
m() {
  struct c *n;
  int j;
  char *o;
  n = o = p();
  if (n->d) {
    q(l ? f : g, l ? i : h);
    for (; n;)
      ;
  }
  j = n->d;
  for (; j < n->e.b; j++) {
    r(j);
    if (s(o[j]))
      o[j] = k;
    t(o[j]);
  }
}
