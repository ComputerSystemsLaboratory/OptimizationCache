struct a {
  long b
};
struct c {
  int d;
  int e;
  int f;
  int g;
  int h;
  int j;
  int k;
  int l;
  int m;
  int *n;
  int *o
};
p;
q() {
  int *a = &a;
  struct a *r = a;
  struct c *s = p;
  int b, i;
  switch (s->d)
  case 0:
  case 8:
    s->e = 0;
  b = (s->e & 1) << 8;
  b |= (s->f & 1) << 10;
  b |= (s->g & 1) << 1;
  b |= (s->h & 1) << 3;
  b |= (s->j & 1) << 4;
  b |= (s->k & 1) << 5;
  b |= (s->l & 1) << 6;
  b |= (s->m & 1) << 7;
  t(b);
  if (s->e) {
    s->g;
    i = 0;
    for (; i < 7; i++)
      t(s->n[i], r + i * 4);
  }
  i = 0;
  for (; i < 7; i++)
    t(s->o[i], r + i * 4);
}
