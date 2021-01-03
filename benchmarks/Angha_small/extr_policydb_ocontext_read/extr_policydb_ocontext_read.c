struct a {
  int b
};
struct d {
  int *addr;
  int *e
};
struct f {
  struct a g;
  struct d h
} j() {
  int i, l;
  struct f *c;
  int m[8];
  i = l = n();
  for (; l;) {
    c = !c;
    switch (i) {
    case 9: {
      int k = 0;
      for (; k < 4; k++)
        c->h.addr[k] = m[k];
      k = 0;
      for (; k < 4; k++)
        c->h.e[k] = m[k + 4];
    }
    case 4:
      c->g.b = c;
    }
  }
}
