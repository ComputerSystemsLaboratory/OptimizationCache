a, b, c, d;
e(f) {
  if (f == &b)
    g();
  d = c == 1 ?: a;
  if (&b != f)
    h();
  return d;
}
