struct a {
  long b
};
struct {
  struct a c;
  long d
} e;
f, g, h;
i() {
  switch (h) {
  case 'p':
    e.d = 0;
    f = g;
    e.c.b = 0;
  }
}
