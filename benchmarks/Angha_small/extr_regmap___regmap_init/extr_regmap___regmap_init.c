struct a {
  int b;
  int aa;
  void *c;
  long d;
  void *e;
  int f;
  void *g;
  void *h;
  void *j
};
struct k {
  int l;
  int m;
  long n;
  int o;
  int p;
  struct k *ab
};
struct q {
  long m;
  long r
};
struct s {
  int t;
  int u;
  struct q *ac
};
struct ad {
  int l;
  long v;
  int ae;
  long af;
  int w;
  struct a ag;
  int ah;
  int ai;
  int aj;
  int ak;
  long al;
  int am;
  int an;
  int ao;
  int ap;
  int aq;
  int ar;
  int as;
  int at;
  int au;
  int av;
  int aw;
  int ax;
  int ay;
  int az;
  int ba;
  int bb;
  int bc
};
void *a, *b, *c, *d, *e, *f, *g, *h;
j, k, l, m, n, o, p, x, y;
void *z();
bd(struct s *be) {
  struct ad *q;
  int i;
  q = z();
  q->ag.j = q->ag.h = q->bc;
  q->bb = q->ba;
  q->az = q->ay;
  q->ax = q->aw;
  q->av = q->au;
  q->at = q->as;
  q->ar = q->aq = q->ap;
  bf(q->ao);
  bf(q->an);
  bg(q->am);
  if (be) {
    q->al = q->ai = be;
    q->v = 0;
  }
  if (x) {
    q->ak = q;
    q->v = 0;
  }
  q->ak = q->aj;
  y = bh();
  switch (q->l) {
  case 2:
    switch (be->t)
    case 6:;
    case 7:
      switch (be->t)
      case 9:;
        break;
  case 0:
    switch (be->t)
    case 4:;
    case 8:
      q->ag.e = h;
    break;
  case 6:
    switch (y) {
    case 0:
      q->ag.e = a;
      break;
    case 9:
      q->ag.e = b;
      break;
    case 8:
      q->ag.e = c;
      break;
    default:
      goto bi;
    }
    break;
  case 4:
    if (y)
      ;
    q->ag.e = d;
    break;
  case 32:
    switch (y) {
    case 0:
      q->ag.e = e;
      break;
    case 9:
      q->ag.e = f;
      break;
    case 8:
      q->ag.e = g;
      break;
    default:
      goto bi;
    }
  }
  if (p)
    q->ag.g = o;
  switch (be->t) {
  case 8:
    q->ag.c = q->ag.f;
    q->ag.g = o;
  case 16:
    switch (p) {
    case 0:
      q->ag.c = q->ag.f;
    case 9:
      q->ag.c = q->ag.f = q;
    case 8:
      q->ag.c = q->ag.f = j;
    }
  case 4:
    q->ag.c = q->ag.f;
  case 2:
    switch (p) {
    case 0:
      q->ag.c = q->ag.f;
      q->ag.g = k;
    case 9:
      q->ag.c = q->ag.f = l;
      q->ag.g = m;
    case 8:
      q->ag.c = q->ag.f = n;
    }
  }
  if (q->ag.e && q->ag.c)
    z(q->ag);
  if (q->ag.d)
    q->v = q->ai;
  if (q->ag.c)
    q->v = 1;
  q->ai = q;
  for (; i < be->u; i++) {
    struct q *r = &be->ac[i];
    struct k *s;
    if (r->m)
      bj(i);
    if (r)
      bj(i);
    if (r > bd)
      bj(i);
    if (r->r)
      bj(i);
    for (; be->u;) {
      unsigned t;
      if (r <= t)
        bj(i);
      bj(q, i);
    }
    s = z();
    s->ab = s->m = s;
    s->n = s->p = s->o = r;
    if (bk(s)) {
      bj(q->ah, i);
      bl(s);
      goto bm;
    }
    if (q->w)
      bn(q->ag.aa);
  }
bm:
bi:
  if (q->af)
    bo(q->ae);
}
