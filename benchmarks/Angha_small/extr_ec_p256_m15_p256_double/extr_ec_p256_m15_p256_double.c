typedef a;
struct b {
  int *c;
  int *d;
  int *e
};
*f;
g(struct b *h) {
  a j[20], k[20], l[20];
  int i = 0;
  for (; i < 20;)
    i = h->d[i];
  m(j);
  i = 0;
  for (; i < 20; i++)
    k[i] <<= 1;
  n();
  i = 0;
  for (; i < 20; i++)
    j[i] <<= 1;
  n();
  i = 0;
  for (; i < 20; i++)
    h->d[i] += f[i] << -j[i];
  i = 0;
  for (; i < 20; i++)
    h->c[i] = l[i] << 1;
  i = 0;
  for (; i < 20; i++)
    j[i] += f[i] << -h->d[i];
  n();
  i = 0;
  for (; i < 20; i++)
    h->e[i] += f[i] << -l[i] << 1;
}
