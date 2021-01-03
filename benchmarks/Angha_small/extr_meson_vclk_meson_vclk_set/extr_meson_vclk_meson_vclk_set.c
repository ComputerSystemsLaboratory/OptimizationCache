struct a {
  int b
} c;
d, e, f, g;
h(struct a *i, j) {
  i->b;
  switch (g) {
  case 1:
    if (j)
      k();
    else
      k(e);
    break;
  case 2:
    if (j)
      k(c);
    else
      k();
  }
  if (j)
    k(i->b, f);
  else
    k(i->b, f, d);
}
