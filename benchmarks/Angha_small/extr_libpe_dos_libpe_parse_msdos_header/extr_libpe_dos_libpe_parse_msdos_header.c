struct {
  int b
} * o;
struct c {
  int d;
  int e;
  int f;
  int g;
  int h;
  int j;
  int k;
  int l;
  int *m;
  int *n
};
p() {
  struct c *a;
  int i;
  o->b = a = malloc(a);
  if (o)
    return a->e;
  q(a->f);
  q(a);
  q(a->g);
  q(a->h);
  q(a->j);
  q(a->l);
  if (a->k)
    for (; i < 4; i++)
      q(a->m[i]);
  i = 0;
  for (; i < 10; i++)
    q(a->n[i]);
}
