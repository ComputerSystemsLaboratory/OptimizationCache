struct a {
  int b;
  int c
};
struct d {
  int b;
  int c
};
struct e {
  int c
};
struct f {
  int g;
  int h;
  int i
};
struct j {
  struct a k;
  struct d l;
  struct e m
};
n, o;
p() {
  struct j *a = 0;
  struct f *b = o;
  if (n)
    b->g = 0;
  switch (n)
  case 9:
    a = 1;
  if (b)
    a->m.c = b = b->i;
  if (a)
    a->l.c = b;
  if (a > b->h)
    a->l.b = b;
  if (b->h)
    a->k.c = b;
  a->k.b = b->h;
}
