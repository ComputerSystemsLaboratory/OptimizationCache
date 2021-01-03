struct a {
  int b;
  int c
};
struct d {
  int f;
  void *g
};
struct h {
  struct a i;
  struct d j
};
struct k {
  int l;
  int e;
  int m
};
struct n {
  int e;
  int o;
  void *m
};
struct p {
  int e
};
union q {
  struct h r;
  struct k s;
  struct n t;
  struct p u
};
struct v {
  struct w *aa
};
struct w {
  int b
};
a, b, c, x, y, d;
z(struct v *ab) {
  struct w e = *ab->aa;
  union q f;
  switch (y) {
  case 1:
    if (ac(f.t.m))
      f.t.e = 0;
    else if (ad())
      f.t.e = 8;
    else
      f.t.e = ac;
    switch (x) {
    case 130:
      f.t.o = a;
      break;
    case 129:
      f.t.o = b;
      break;
    case 128:
      f.t.o = c;
    }
    if (ac(f))
      f.u.e = 0;
    else if (ad())
      f.u.e = 8;
    else
      f.u.e = 4;
    if (ac())
      f.t.m = 0;
    if (ac(f.s))
      f.s.e = 0;
    else if (ad())
      f.s.e = 8;
    else
      f.s.e = 4;
    f.t.o |= d;
  }
  ae(e);
}
