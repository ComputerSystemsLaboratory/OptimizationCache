struct a {
  int *b
} c(struct a *f) {
  int *d = f->b;
  int e;
  if (f->b)
    if (f)
      e = g(&d);
  if (e)
    h(f->b);
}
