a, b;
struct c {
  char d;
  char e
} f() {
  struct c *g;
  char h[3];
  int i = 0;
  g = j(h);
  g->d = i++;
  if (a) {
    g->d <<= 32;
    g->d |= h[i++];
  }
  g->e = i++;
  if (b) {
    g->e <<= 32;
    g->e |= h[i];
  }
}
