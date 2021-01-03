struct {
  long a
} * b;
c, d, e;
f() {
  for (; d; e++)
    if (b[e].a)
      break;
  g();
  for (; d;)
    if (b[e].a)
      break;
  if (c)
    h();
  g(b[e]);
}
