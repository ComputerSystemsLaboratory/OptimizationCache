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
  int p
};
struct q {
  int aa;
  struct a ab
} r(struct q *s) {
  switch (s->aa) {
  case 2:
    s->ab.b = s->ab.c = s->ab.d = s->ab.e = s->ab.f = 4;
    s->ab.g = 256;
    s->ab.h = 2;
    s->ab.i = 8;
    s->ab.j = 32;
    s->ab.k = 256;
    s->ab.l = 48;
    s->ab.m = 304;
    break;
  case 0:
    s->ab.b = s->ab.c = s->ab.d = s->ab.e = s->ab.f = 6;
    s->ab.g = 256;
    s->ab.h = 2;
    s->ab.i = 8;
    s->ab.j = 32;
    s->ab.k = 256;
    s->ab.l = 48;
    s->ab.m = 304;
    break;
  case 8:
    s->ab.b = s->ab.c = s->ab.d = s->ab.e = s->ab.f = 4;
    s->ab.g = 256;
    s->ab.h = 6;
    s->ab.i = 8;
    s->ab.j = 32;
    s->ab.k = 256;
    s->ab.l = 48;
    s->ab.m = 304;
    break;
  default:
    s->ab.b = s->ab.c = s->ab.d = 2;
    s->ab.e = 1;
    s->ab.g = 256;
    s->ab.h = 6;
    s->ab.i = 8;
    s->ab.j = 32;
    s->ab.k = 256;
    s->ab.l = 48;
    s->ab.m = 304;
  }
  switch (s->ab.o) {
  default:
    t(1);
    break;
  case 4:
    t(2);
  }
  s->ab.p = 0;
  switch (s->ab.n) {
  case 1:
    s->ab.p |= 0;
  case 2:
    s->ab.p = 1;
  }
}
