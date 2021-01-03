struct a {
  int b
};
struct c {
  int b
};
struct d {
  int b
};
struct e {
  int b
};
struct f {
  int b
};
struct g {
  struct a h;
  struct c i;
  struct d j;
  struct e k;
  struct f l
};
struct m {
  int b
};
struct n {
  int b
};
struct o {
  int b
};
struct p {
  int b
};
struct q {
  int b
};
struct r {
  int s;
  struct m t;
  struct n u;
  struct o v;
  struct p w;
  struct q x
};
struct y {
  int b
};
struct aa {
  struct r ab;
  struct y ac;
  struct a ad;
  struct g ae
} z(struct aa *af) {
  af->ae.l.b = af->ae.k.b = af->ae.j.b = af->ae.i.b = af->ae.h.b = af->ad.b =
      af->ab.x.b = af->ab.w.b = af->ab.v.b = 2;
  af->ab.u.b = af->ab.t.b = af->ac.b = 0;
}
