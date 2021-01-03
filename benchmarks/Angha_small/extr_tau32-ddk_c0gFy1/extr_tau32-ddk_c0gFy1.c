struct a {
  struct b *c
};
struct d {
  int *e;
  struct a f
};
struct b {
  int g;
  int h
} i(struct d *j) {
  int k, l;
  k = 32 - 1;
m:
  j->f.c[k].g = j->f.c[k].h = 1;
  if (--k >= 0)
    goto m;
  l = j;
  k = 32 - 1;
n:
  o(l);
  l++;
  if (--k >= 0)
    goto n;
  p();
  k = sizeof(j) - 1;
q:
  j->e[k] = 2;
  if (--k >= 0)
    goto q;
r:
  goto r;
}
