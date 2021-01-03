struct a {
  struct b *c
};
struct b {
  int *d
} e(struct a *f) {
  int *g = &f->c->d[0];
  for (;;)
    *g++ = 5;
}
