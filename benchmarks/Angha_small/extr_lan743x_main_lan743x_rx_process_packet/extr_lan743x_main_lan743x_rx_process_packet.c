struct a {
  int b;
  int c
};
struct d *f;
struct d {
  int e
} g() {
  struct a *a;
  int h;
  if (f->e < 0)
    goto done;
  a = f = f->e;
  if (a->b)
    h = f->e;
  if (h >= 0)
    a = f;
  if (h)
    i(a);
done:;
}
