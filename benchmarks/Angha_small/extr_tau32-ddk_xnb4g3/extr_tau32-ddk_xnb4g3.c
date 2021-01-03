struct a {
  long b
};
struct {
  int c;
  struct a d
} * e;
struct {
  char f;
  int g;
  long b
} * h;
i, j, k, l, m, n;
o() {
  if (h)
    p();
  if (h[0].g)
    p();
  if (h != e)
    p();
  if (h)
    if (e)
      h = e;
  if (h)
    q();
  if (h[1].f)
    q();
  if (h)
    q();
  if (h)
    q();
  if (h != e)
    if (h != e->d.b)
      goto r;
  if (e->d.b)
    s();
  h[1].b = e->d.b;
r:
  if (e->c)
    t();
  if (e->c & m)
    p();
  if (e->c & m << 1)
    q();
  e->c &= m | m << 1;
  if (i)
    p();
  if (e->c & i << 1)
    q();
  e->c &= i | i << 1;
  if (n)
    p();
  if (e->c & n << 1)
    q();
  e->c &= n | n << 1;
  if (l)
    p();
  if (e->c & l << 1)
    q();
  e->c &= l | l << 1;
  if (k)
    u();
  if (e->c & k)
    v();
  if (e->c & j)
    p();
  if (e->c & j << 1)
    q();
  if (e)
    t();
}
