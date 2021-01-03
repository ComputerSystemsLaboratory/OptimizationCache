struct {
  int b;
  struct c *d
} * l;
struct c {
  struct e *f
};
struct e {
  int g
};
struct h {
  int i
};
j, k, m;
n(void *o) {
  struct c a = *l->d;
  struct e *p = a.f;
  switch (m) {
  case 1:
    q(o ? j : k);
    p->g = *(int *)o;
  case 2: {
    struct h *b = o;
    r(b->i);
  }
  }
}
