struct {
  struct a *b
} * c;
struct a {
  int d;
  int e
};
f, g, h;
i() {
  unsigned j;
  if (f) {
    j = 0;
    for (; j < g; ++j)
      if (c->b[j].e)
        break;
    if (j == g)
      goto k;
    c->b[j].d = 0;
  }
  if (h != f)
    l();
k:;
}
