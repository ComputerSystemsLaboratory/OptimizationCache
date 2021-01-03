struct a {
  struct b *c;
  struct b *d;
  long e
};
struct b {
  int f;
  struct b *g;
  struct a h
} * i;
j() {
  struct a h = i->h;
  if (h.e) {
    int k;
    i = &h.d[k];
  }
  i->g = h.c;
}
