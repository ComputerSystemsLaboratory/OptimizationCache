struct a {
  int b;
  int c;
  int d
};
struct e {
  long f;
  long g;
  int h
};
struct i {
  long j;
  int k;
  int dirfd
};
struct l {
  long f;
  int m
};
struct n {
  int nwaiters;
  int o;
  int condvar
};
q;
r(void *s, long *t) {
  int *a = t;
  switch (q) {
  case 0:;
  case 1:;
  case 2: {
    struct n *p = s;
    p->condvar = p->o;
    a[2] = p;
  }
  case 8:
    a[0] = s;
  case 9:
  case 20: {
    struct l *p = s;
    a[0] = p;
    p->m = p->f;
  }
  case 21: {
    struct i *p = s;
    a = p->dirfd = p->k = p->j;
    a[3] = t[4] = p;
    break;
  }
  case 22:
    a[2] = s;
  case 7:
    t[2] = s;
  case 28:
    a[4] = s;
  case 29: {
    struct e *p = s;
    a[2] = p;
    p->h = p->g;
  }
  case 3: {
    struct a *p = s;
    p = p->d;
    a = p;
    a[0] = s;
  }
  case 39:;
  case 40:;
  case 41:;
  case 6:;
  case 48:;
  }
}
