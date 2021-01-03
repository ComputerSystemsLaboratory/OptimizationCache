struct a {
  int b
};
struct c {
  struct a d;
  int e
};
f, g;
h(struct c *i) {
  if (j())
    ;
  if (k() && l())
    if (i->e)
      i->d.b = g;
    else
      i->d.b = f;
}
