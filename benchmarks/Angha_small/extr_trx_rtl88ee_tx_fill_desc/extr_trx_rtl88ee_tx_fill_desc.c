struct {
  long b
} * e;
struct c {
  int cipher
} * d;
long f;
g, h;
i() {
  int a = j() == 0, k = j() == 0;
  if (h)
    if (l())
      a = k = 1;
  if (a) {
    struct c b = *d;
    switch (b.cipher) {
    case 128:
    case 130:
      m(i, 1);
      break;
    case 131:
      m(i, 3);
      break;
    default:
      m(i, 0);
    }
    n();
  }
  o(k ? 1 : 0);
  if (g) {
    p();
    q(i, f);
  } else
    q(i, e->b);
}
