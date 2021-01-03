struct a {
  int b
};
struct {
  struct a *c
} * d;
e, f, g;
h() {
  struct a *i = d->c;
  i->b = e;
  if (f)
    g = (100000 - f) / 100;
  else
    g = 0;
}
