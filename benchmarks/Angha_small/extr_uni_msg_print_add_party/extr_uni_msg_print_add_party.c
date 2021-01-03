union a {
  int b
};
struct c {
  int d
};
struct e {
  int d
};
struct g {
  struct e f
};
struct h {
  int d
};
struct i {
  struct h f
};
struct j {
  int d
};
struct k {
  struct j f
};
struct l {
  int d
};
struct m {
  struct l f
};
struct n {
  int d
};
struct o {
  struct n f
};
struct p {
  int d
};
struct q {
  struct p f
};
struct r {
  int d
};
struct s {
  int d
};
struct t {
  struct s f
};
struct aa {
  int d
};
struct ab {
  struct aa f
};
struct ac {
  struct aw *ae;
  struct c af;
  struct g ag;
  struct i ah;
  struct k ai;
  struct m aj;
  struct o ak;
  struct q al;
  struct r am;
  struct t au;
  struct ab aal
};
struct aw {
  int d
};
a, b;
u(struct ac *v) {
  if (v->aal.f.d)
    w((union a *)&v->aal);
  if (a)
    w(&v);
  if (v->au.f.d & a)
    w((union a *)&v->au);
  if (v->am.d & a)
    w();
  if (v->al.f.d & a)
    w((union a *)&v->al);
  if (v->ak.f.d & a)
    w((union a *)&v->ak);
  if (v->aj.f.d & a)
    w((union a *)&v->aj);
  if (v->ai.f.d & a)
    w((union a *)&v->ai);
  if (v->ah.f.d & a)
    w((union a *)&v->ah);
  if (v->ag.f.d & a)
    w((union a *)&v->ag);
  if (v->af.d & a)
    for (;;)
      if (v->ae[b].d)
        w(v[b]);
}
