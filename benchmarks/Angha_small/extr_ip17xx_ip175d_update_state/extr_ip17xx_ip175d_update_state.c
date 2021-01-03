struct a {
  int b;
  int c;
  struct d *e;
  int *f
};
struct d {
  long g
} h;
k;
l[];
m(struct a *n) {
  int i, j, a;
  i = 0;
  for (; i < 6; i++) {
    o(i, i + 1);
    if (n->f)
      continue;
    a = 4 + i;
    j = 0;
    for (; j < 6; j++)
      if (i & 1 << j) {
        if (n->b & 1)
          k |= 1;
        if (n->c & 1)
          l[i] |= 1;
      }
  }
  i = 0;
  for (; i < 8; i++) {
    p(i);
    p(8 + i, h);
    p(6 + i, l[i] | l[i + 1] << 8);
  }
  i = 0;
  for (; i < 6; i++)
    a |= p(4 + i, n->f[n->e[i].g]);
  return a;
}
