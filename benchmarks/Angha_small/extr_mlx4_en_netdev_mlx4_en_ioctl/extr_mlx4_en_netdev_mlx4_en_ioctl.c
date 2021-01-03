struct {
  int a;
  void *b
} * c;
struct {
  int d;
  void *e
} * f;
g() { c->b = f->e; }
