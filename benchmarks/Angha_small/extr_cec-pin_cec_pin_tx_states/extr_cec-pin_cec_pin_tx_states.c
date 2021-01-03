struct a {
  int b
} c(struct a *d) {
  switch (d->b)
    ;
  if (d)
    d->b = 9;
  d->b = 1;
}
