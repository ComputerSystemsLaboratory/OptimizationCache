struct {
  void *a
} * b;
struct {
  void *a
} * c;
d, e;
void *f;
g() {
  if (c->a)
    c->a = f;
  if (e || b == d)
    b->a = f;
}
