struct a {
  int b
};
struct c {
  int d;
  int e
};
f, g;
h() {
  struct a *i = j();
  struct c *k = i;
  int l = 0;
  switch (i->b) {
  case 5:
    if (i)
      l = 1;
    break;
  case 8:
    l = 1;
  }
  m(&k->d);
  if (!l)
    n();
  if (l && f)
    goto o;
  p(i + g);
  if (l)
  o:
    q();
}
