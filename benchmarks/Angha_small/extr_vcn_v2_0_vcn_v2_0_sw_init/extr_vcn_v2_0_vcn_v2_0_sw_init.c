struct a {
  int c;
  int aa;
  int d;
  int e;
  int f;
  int g;
  int h;
  int j;
  int k;
  int l;
  int m
};
struct n {
  int o;
  int *ab;
  struct a ac;
  int p
};
struct q {
  int r
};
struct s {
  long t
};
struct u {
  struct n ad;
  struct q b;
  struct s ae
};
v;
w(void *x) {
  int i;
  struct u *a = x;
  y(a, a->ad.ab);
  for (; i < a->ad.o; ++i)
    y(i + a->ad.ab);
  if (a->ae.t)
    a->ad.ac.m = a->ad.ac.l;
  a->ad.ac.k = a->ad.ac.j;
  a->ad.ac.h = a->ad.ac.g;
  a->ad.ac.f = a->ad.ac.e;
  a->ad.ac.d = a->ad.ac.aa;
  for (; i < a->ad.o; ++i)
    a->ad.ab[i] = a->b.r + i;
  a->ad.p = a->ad.ac.c = v;
}
