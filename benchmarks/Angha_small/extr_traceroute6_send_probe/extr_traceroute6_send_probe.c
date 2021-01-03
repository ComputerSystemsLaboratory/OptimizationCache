struct {
  int b;
  int c;
  int d;
  void *checksum
} * o;
struct e {
  void *f;
  void *g
};
struct h {
  int i;
  void *j
};
struct k {
  void *l;
  int m
};
struct n {
  struct h init;
  struct k ch
};
long a;
b, p;
q() {
  struct n *c;
  struct e *d;
  c = o + 1;
  if (a) {
    d = c + 1;
    d->g = d->f = r();
  }
  if (p < 0 || p != a)
    printf(b, a);
}
