struct a {
  void *b;
  char *c
} * d;
e;
void *f;
g() {
  struct a *h = d;
  d->b;
  if (e)
    h->c = f;
  *(char *)f = d->c;
}
