struct a {
  int b;
  int c;
  int d;
  int e;
  int f;
  int constell;
  int g;
  int fec;
  int h;
  int i;
  int j;
  int k;
  int l
} m(struct a *n) {
  int a[0];
  int b = 0;
  o(a);
  n->b = a[b++] & 7;
  n->c = a[b++] & 5;
  n->d = a[b++] & 1;
  n->e = a[b++] & 7;
  n->f = a[b++] & 7;
  n->constell = a[b++] & 7;
  n->g = a[b++] & 1;
  n->fec = a[b] & 3;
  n->i = n->h & 8;
  n->j = (n->h & 12) >> 2;
  n->k = (n->h & 2) >> 1;
  n->l = n->h & 1;
}
