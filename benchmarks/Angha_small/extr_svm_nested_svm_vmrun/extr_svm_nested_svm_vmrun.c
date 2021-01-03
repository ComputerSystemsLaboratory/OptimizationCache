struct a {
  int b
};
struct c {
  struct a control;
  int d
} * f;
e;
struct g *h;
i() {
  struct c c = *(f = h);
  if (f->control.b)
    j();
  if (f->control.b & e)
    h = f;
}
