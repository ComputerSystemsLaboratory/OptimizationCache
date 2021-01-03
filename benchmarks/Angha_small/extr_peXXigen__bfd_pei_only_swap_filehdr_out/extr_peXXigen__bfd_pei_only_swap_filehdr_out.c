struct a {
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  int l;
  int m;
  int n;
  int o;
  int *p;
  int q;
  int r;
  int *s;
  int t;
  int u;
  int v
};
struct w {
  int x;
  int y;
  int aa;
  struct a ab;
  int ac
};
struct ad {
  int *u;
  int *s;
  int *p
} z(void *ae) {
  int a;
  struct w *b = ae;
  struct ad *c = b->ab.d = b->ab.e = b->ab.f = b->ab.g = b->ab.h = b->ab.i =
      b->ab.j = b->ab.k = b->ab.l = b->ab.m = b->ab.n = 40;
  b->ab.o = a = 0;
  for (; a < 4; a++)
    b->ab.p[a] = 0;
  a = 0;
  for (; a < 10; a++)
    b->ab.s[a] = af(b->ac);
  ag(b->y);
  ah(b->aa);
  ah(b, b->ab.c);
  ah(b->ab);
  a = 0;
  for (; a < 4; a++)
    ah(b->ab.p[a], c->p[a]);
  ah(b->ab.q);
  ah(b->ab.r);
  a = 0;
  for (; a < 10; a++)
    ah(b->ab.s[a], c->s[a]);
  ag(b->ab.t);
  a = 0;
  for (; a < 16; a++)
    ag(b->ab.u, c->u[a] & b->ab.v);
}
