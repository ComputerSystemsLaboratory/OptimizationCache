struct a {
  int b;
  int c
};
struct d {
  int ab
};
struct {
  struct a ae;
  struct d e
} * a;
struct ag {
  long ai
};
struct an {
  long ao;
  long ap;
  int aq;
  int ar;
  int at
};
f() {
  struct an *b = 0;
  b->at = a = a->e.ab;
  b->ar = a->ae.c;
  b->aq = a->ae.b;
  b->ap = a;
  struct ag *c = a->ae.b;
  c->ai = a;
}
