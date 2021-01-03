struct a {
  struct b *b
};
struct c {
  struct b *b
};
struct b {
  int d;
  struct a e;
  struct c f
} * g();
struct b *h(struct b *i) {
  struct b *j;
  if (!i)
    return 0;
  switch (i->d) {
  case 132:
  case 128:
  case 129:
  case 133:
    break;
  default:
    k();
  }
  switch (i->d)
  case 131:
    switch (i->e.b->d) {
    case 4:
      i = i->e.b;
      break;
    case 0:
      j = i->e.b;
      i->d = 7;
      i->f.b = g(131, i->e.b->f);
      j->d = 131;
      j->f.b = 0;
      i = h(i);
      break;
    case 7:
      j = i->e.b;
      i->f.b = g(131, i->e.b->f);
      j->d = 131;
      j->f.b = 0;
      i = h(i);
    }
  return i;
}
