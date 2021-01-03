struct a {
  int b;
  int c
};
d, e, f, g;
void h() {
  struct a *i = g;
  int j;
  if (i->b % d)
    k();
  if (i->b < d)
    k();
  if (i)
    k();
  if (d)
    k();
  if (i->c % i->c < d)
    j = e;
  else
    j = f;
  if (j)
    k();
}
