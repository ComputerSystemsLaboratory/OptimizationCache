struct a {
  long b;
  int c
};
struct d {
  int e
};
struct f {
  int g;
  int *h;
  struct d j
};
k, l;
m() {
  struct f *a = n();
  int i;
  struct a *o = a;
  i = 0;
  for (; a->j.e && o[i].b; i++)
    ;
  --i;
  if (i < o[i].c)
    return k;
  for (; i < a->j.e && o[i].b; ++i)
    ;
  for (; i < a->g; i++)
    l = a->h[i];
  p(i);
}
