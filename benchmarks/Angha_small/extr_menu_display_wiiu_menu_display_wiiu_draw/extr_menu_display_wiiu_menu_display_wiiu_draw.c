struct c {
  int aa;
  struct d *e
};
struct f {
  int h;
  int g;
  int b;
  int a
};
struct j {
  float k;
  float e;
  float l;
  float ab
};
struct m {
  float n;
  float o
};
struct d {
  struct f ac;
  struct j ad;
  struct m ae
};
struct p {
  int af
};
struct q {
  struct r *ag;
  struct p ah
};
struct r {
  float *s;
  int *ac;
  float *t
};
a, b, c, d, f, g;
u(struct q *v) {
  struct c *h = u;
  switch (v->ah.af) {
  case 133:
    w(&b);
    break;
  case 132:
    w(&c);
    break;
  case 131:
    w(&f);
    break;
  case 130:
    w(&d);
    break;
  case 129:
    w(&a);
    break;
  case 128:
    w(&g);
  }
  switch (v->ah.af)
  case 2128:
    x();
  struct d *e = h->e + h->aa;
  y();
  if (!v->ag) {
    e[1].ae.o = e[2].ae.n = e[3].ae.n = 1.0f;
    e[3].ae.o = 0.0f;
  } else
    e[2].ae.o = e[3].ae.n = -v->ag->s[7];
  if (v->ag)
    e[1].ad.k = e[2].ad.k = e[3].ad.k = 1.0f;
  else {
    e[1].ad.k = e[2].ad.k;
    e[3].ad.k = v->ag->t[6];
  }
  for (int i = 0; i < 4; i++) {
    e[i].ac.h = v->ag->ac[i];
    e[i].ac.g = v->ag->ac[i << 2];
    e[i].ac.b = v->ag->ac[i];
    e[i].ac.a = v->ag->ac[i];
  }
  e->ad.k = e->ad.e = e->ad.l = e->ad.ab = 1.0f;
}
