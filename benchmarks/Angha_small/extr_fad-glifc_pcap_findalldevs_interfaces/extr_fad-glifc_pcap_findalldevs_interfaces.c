struct a {
  int b;
  void *c
};
struct d {
  int e;
  void *f
};
void *g;
h() {
  struct a i;
  struct d a;
  i.c = g;
  j(&i);
  a.f = g;
  j(&a);
}
