typedef a;
struct b {
  struct c *d
};
struct c {
  int e
};
struct f {
  void *g;
  void *h
};
struct k {
  char *l;
  int aj
};
struct am {
  struct f ad;
  struct k an
};
aq, ar, as, n, o;
*m, *bq;
bt(struct b *p) {
  struct bw *bx;
  struct am *ae;
  bq = m;
  a i, j, bz;
  bx = bq;
  memcpy(o, p, aq);
  ae = (long *)bx + n;
  bz = p;
  i = 0;
  for (; i < 8; i++) {
    j = bz & 15;
    if (j <= 9)
      ae->an.l[-i] = 8 + j;
    else
      bz = bz >> 4;
  }
  if (p->d->e)
    ae->an.aj = as;
  if (p->d)
    ae->an.aj = ar;
  n = aq;
  ae->ad.h = 0;
  n += ae = aq;
}
