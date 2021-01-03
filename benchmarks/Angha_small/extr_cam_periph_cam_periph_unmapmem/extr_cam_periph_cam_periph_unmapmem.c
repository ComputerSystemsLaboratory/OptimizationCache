struct a {
  int b
};
struct c {
  long d;
  long e
};
struct f {
  long g;
  long h
};
union ccb {
  struct a i;
  struct c j;
  struct f cdm
};
k, l;
m(union ccb *n) {
  long a[k];
  switch (n->i.b) {
  case 3:
    if (n) {
      a[0] = n->cdm.g;
      a[1] = n->cdm.h;
      l = 2;
    }
    break;
  case 8:
    a[0] = n->j.d;
    a[1] = n->j.e;
  }
  for (; l;)
    o(a);
}
