struct a {
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  int l;
  int m;
  int n
} o(struct a *p) {
  switch (p->b) {
  case 4:
    p->d = p->e = p->f = p->g = p->h = p->i = p->j = p->k = 10;
  case 6:
    p->i = p->j = p->k = p->l = 2;
  case 96:
    p->j = p->k = p->l = p->m = 6;
  case 408:
    p->k = p->l = p->m = p->n = 4;
  case 56:
    p->d = p->e = p->f = p->g = p->k = p->l = p->m = p->n = 3;
  case 504:
    p->d = p->c = p->e = p->f = p->g = p->h = p->i = p->j = p->k = p->l = p->m =
        p->n = 3;
  case 8:
    p->d = p->c = p->e = p->f = p->g = p->h = p->i = p->j = p->k = p->l = p->m =
        p->n = 3;
  case 2:
    p->d = p->c = p->e = p->f = p->g = p->h = p->i = p->j = p->k = p->l = p->m =
        p->n = 3;
  case 76:
    p->d = p->c = p->e = p->f = p->g = p->h = p->i = p->j = p->k = p->l = p->m =
        p->n |= 2;
  }
}
