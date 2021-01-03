struct a {
  int b;
  int c;
  int d
};
e, f;
g(struct a *h) {
  switch (h->b) {
  case 1:
    if (f || h->d) {
      h->c = 1;
      i();
    }
    if (h->d && h->c)
      j();
  case 8:
    if (h->d)
      i();
    if (h->d && e)
      i();
    if (e)
      i();
  }
}
