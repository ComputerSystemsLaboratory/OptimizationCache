struct a {
  int b;
  int c;
  int d;
  int e
};
struct f {
  int g;
  int h;
  int i
} j(struct f *k) {
  struct a l;
  l.b = l.c = l.d = l.e = 60;
  m(&l);
  k->g = 0;
  k->h = 0;
  k->i = k->g = 0;
}
