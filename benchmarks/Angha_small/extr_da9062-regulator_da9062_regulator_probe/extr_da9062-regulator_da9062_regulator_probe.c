struct a {
  long b
};
struct {
  struct a c;
  struct a d;
  int e
} * f;
g;
h() {
  if (f)
    if (i())
      return 0;
  if (f->d.b)
    if (i())
      return 0;
  if (f->c.b)
    if (i())
      return 0;
  if (f->e)
    g++;
}
