struct a {
  long b
};
struct {
  int c;
  int d;
  int e;
  int f;
  int g;
  struct a h
} * i;
j, k, l, m;
n(o) {
  if (i->e)
    i->f = i->e;
  else
    i->f = p();
  i = &i;
  int a = q(o && i->g);
  if (o && i->h.b)
    if (m)
      a = j;
    else
      a = k;
  i = i->d;
  i->c = a;
  if (o)
    i = l;
}
