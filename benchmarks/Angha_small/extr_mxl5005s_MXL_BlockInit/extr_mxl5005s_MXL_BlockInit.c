d;
struct a {
  int b;
  int c
} e() {
  struct a *f = d;
  if (f)
    switch (f->b)
    case 0:
      g();
  g();
  if (f)
    g();
  if (f->c == 2)
    g();
  if (f->c == 0)
    g();
  if (f->c == 9)
    g();
  if (f->c == 7)
    g();
  if (f->c == 8)
    g();
  if (f->c == 4)
    g();
  if (f->c)
    g();
}
