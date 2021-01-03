struct {
  int a
} * b;
char *c, *d, *e;
struct {
  char buf[4]
} f;
g() {
  char *h;
  switch (j()) {
  case 130:
    h = c;
    break;
  case 129:
    h = d;
    break;
  case 128:
    h = e;
    break;
  default:
    goto bye;
  }
  k(h);
  long l = b->a & 3;
  if (l) {
    int i = l;
    for (; i < 4; i++)
      f.buf[i] = 0;
    m();
  }
  n(b);
bye:;
}
