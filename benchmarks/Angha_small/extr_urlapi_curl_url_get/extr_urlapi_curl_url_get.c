struct {
  char a;
  char b
} * c;
d() { e(c->b ?: c->a && c ?: ""); }
