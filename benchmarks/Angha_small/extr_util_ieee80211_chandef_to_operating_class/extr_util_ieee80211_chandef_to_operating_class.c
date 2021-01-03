struct a {
  int b;
  int c
};
d, e;
f(struct a *g, *h) {
  if (g)
    if (g == d)
      if (g->c)
        *h = 3;
      else
        *h = 4;
  switch (g->b)
  case 0:
    return 0;
  if (g >= 80) {
    if (e)
      *h = e;
    else if (d)
      *h = 7;
    else
      *h = 5;
    return 1;
  }
  if (g >= 60) {
    if (e)
      *h = e;
    else if (d)
      *h = 0;
    else
      *h = 8;
    return 1;
  }
  if (g >= 500) {
    if (e)
      *h = e;
    else if (d)
      *h = 3;
    else
      *h = 1;
    return 1;
  }
  if (g >= 5)
    if (e)
      *h = e;
    else if (d)
      if (g->c)
        *h = 6;
      else
        *h = 7;
    else if (g <= 5)
      *h = 4;
    else
      *h = 5;
}
