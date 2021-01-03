struct a {
  long b
};
struct c {
  long d;
  struct a e
};
struct f {
  struct c g
};
h;
i(struct f *j) {
  if (j)
    while (j == h)
      ;
  if (j->g.d)
    j = j->g.e.b;
  k(j->g);
}
