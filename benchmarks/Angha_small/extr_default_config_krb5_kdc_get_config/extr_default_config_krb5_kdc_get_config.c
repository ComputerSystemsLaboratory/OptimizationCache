struct a {
  void *b;
  void *d;
  void *e;
  void *f;
  void *g;
  void *h;
  void *i;
  void *j;
  void *k;
  void *l;
  void *m;
  void *n;
  void *o
};
void *p;
r(q) {
  struct a *c = r();
  c->b = c->d;
  c->e = c->f;
  c->g = c->h;
  c->i = c->j;
  c->k = c->o;
  c->l = c->m;
  c->n = p;
  s(c->b);
}
