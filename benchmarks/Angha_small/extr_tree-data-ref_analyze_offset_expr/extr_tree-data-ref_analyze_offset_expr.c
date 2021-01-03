a, b, c, d, e;
f(*g) {
  long h;
  if (a)
    return 1;
  f(&h);
  switch (e) {
  case 9:
    if (c)
      if (b && h)
        i();
    if (d && h)
      *g = i();
    else
      *g = b;
  }
}
