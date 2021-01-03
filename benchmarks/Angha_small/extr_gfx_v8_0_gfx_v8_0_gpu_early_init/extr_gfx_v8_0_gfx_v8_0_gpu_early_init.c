struct a {
  int b;
  int c;
  int d;
  int e
};
struct {
  int f;
  int a;
  struct a ab
} * g;
a, b, c, h;
i() {
  int j;
  switch (g->f)
    ;
  if (h)
    if (c)
      g->ab.b = 2;
    else
      g->ab.b = 1;
  g->ab.c = g->ab.d = g->ab.e = 4;
  switch (g->ab.b) {
  case 1:
    k(j, a, b, 0);
    break;
  case 2:
    k(j, a, b, 1);
    break;
  case 4:
    k(j, a, b, 2);
  }
}
