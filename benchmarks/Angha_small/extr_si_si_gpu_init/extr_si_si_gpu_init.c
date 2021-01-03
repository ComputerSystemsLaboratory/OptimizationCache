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
  int o
};
struct p {
  int family;
  struct a config
} q(struct p *r) {
  switch (r->family) {
  case 8:
    r->config.b = 2;
    r->config.c = 2;
    r->config.d = 8;
    r->config.e = 2;
    r->config.f = 4;
    r->config.g = 2;
    r->config.h = 256;
    r->config.i = 2;
    r->config.j = 8;
    r->config.k = 32;
    r->config.l = 0;
    r->config.m = 48;
    r->config.n = 304;
    break;
  case 0:
    r->config.b = 2;
    r->config.c = 8;
    r->config.d = 5;
    r->config.e = 2;
    r->config.f = 4;
    r->config.g = 8;
    r->config.h = 256;
    r->config.i = 2;
    r->config.j = 8;
    r->config.k = 32;
    r->config.l = 0;
    r->config.m = 48;
    r->config.n = 304;
    break;
  default:
    r->config.b = 1;
    r->config.c = 4;
    r->config.d = 5;
    r->config.e = 2;
    r->config.f = 4;
    r->config.g = 4;
    r->config.h = 256;
    r->config.i = 2;
    r->config.j = 8;
    r->config.k = 32;
    r->config.l = 0;
    r->config.m = 48;
    r->config.n = 304;
    break;
  case 1:
    r->config.b = r->config.c = r->config.d = r->config.e = r->config.f =
        r->config.g = r->config.h = r->config.i = r->config.j = r->config.k =
            r->config.l = r->config.m = 8;
  case 2:
    r->config.b = 1;
    r->config.c = 4;
    r->config.d = 5;
    r->config.e = 1;
    r->config.f = 1;
    r->config.g = 2;
    r->config.h = 256;
    r->config.i = 6;
    r->config.j = 8;
    r->config.k = 32;
    r->config.l = 4;
    r->config.m = 48;
    r->config.n = 304;
  }
  switch (r->config.o) {
  default:
    s();
    s(1);
    break;
  case 4:
    s(2);
  }
}
