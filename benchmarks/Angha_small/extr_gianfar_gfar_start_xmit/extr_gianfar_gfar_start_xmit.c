struct a {
  int b
} * c;
struct a *d(e) {
  int f, b = d()->b;
  if (b == 0)
    ;
  else {
    f = 0;
    for (; f < b; f++)
      if (f == 1)
        g(c[f]);
  }
}
