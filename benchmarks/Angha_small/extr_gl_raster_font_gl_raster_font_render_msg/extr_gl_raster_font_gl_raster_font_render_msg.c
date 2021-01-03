struct {
  float b;
  float c;
  float d;
  float e
} * f;
struct {
  float h;
  float i
} * n;
struct j {
  int a;
  struct k *ab;
  long l
};
struct k {
  int ac
};
typedef float m;
o;
p(*q) {
  m a[4];
  m g, r, h, i;
  int s;
  struct j *b = q;
  if (n) {
    g = o;
    r = s = n;
    h = n->h;
    i = n->i;
    a[3] = t() / 255.0f;
    if (a[3])
      a[3] = 1.0f;
  } else {
    a[0] = f->c;
    a[1] = f->d;
    a[2] = f->e;
    a[3] = 1.0f;
  }
  b->ab->ac = s;
  if (b->l && b) {
    m u[4];
    u[0] = a[0] * h;
    u[1] = a[1] * h;
    u[2] = a[2] * h;
    u[3] = a[3] * i;
    v(u);
  }
  v(b, a, g, r);
}
