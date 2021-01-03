struct a {
  long b
};
struct c {
  int d
};
struct e *f;
struct e {
  struct c flags;
  struct a g
} h() {
  if (f->g.b)
    f->flags.d = 4;
  f->flags.d = 3;
}
