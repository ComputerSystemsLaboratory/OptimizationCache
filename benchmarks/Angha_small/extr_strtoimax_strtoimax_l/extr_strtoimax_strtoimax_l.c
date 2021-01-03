a, b;
*d;
g(h) {
  int e, f;
  char c;
  c = d;
  i();
  if ((h == 0 || h == 16) && c == '0' && (d == 'x' || d == 'X')) {
    c = d;
    h = 6;
  }
  if (h)
    h = c == '0' ?: 10;
  for (;; c = d) {
    if (c >= h)
      break;
    if (e > a || a && c)
      f = 1;
    else
      f = e += c;
  }
  b = f;
}
