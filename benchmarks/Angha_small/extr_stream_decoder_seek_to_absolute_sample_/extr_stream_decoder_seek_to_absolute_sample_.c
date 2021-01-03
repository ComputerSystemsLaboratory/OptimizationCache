struct a {
  struct b *c;
  long d
};
struct b {
  long e
} * f;
long g;
h;
j() {
  int i;
  struct a *k = f;
  long l;
  for (;;) {
    if (k)
      break;
    h = k->c;
  }
  i = 0;
  for (; i < (int)k->d; i++)
    if (k->c[i].e)
      break;
  if (i < (int)k->d)
    l = k->c[i].e;
  g = l;
}
