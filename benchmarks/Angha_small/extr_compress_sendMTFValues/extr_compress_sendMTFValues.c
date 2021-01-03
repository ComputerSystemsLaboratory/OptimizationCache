typedef a;
struct b {
  int c;
  int **d;
  int e;
  long *f;
  long **g
};
typedef h;
k, l, m, n, o;
p(struct b *q) {
  h r, s, i, j, aa, ab, ac, ad, t, u;
  long ae[n];
  h af[n];
  long *ag = q;
  t = q;
  if (q < 200)
    u = 2;
  else if (q < 600)
    u = 3;
  else if (q < 1200)
    u = 4;
  else if (q)
    u = 5;
  else
    u = 6;
  h v = u;
  while (v) {
    while (t)
      ab++;
    for (; r < t; r++)
      if (r <= ab)
        q->d[v - 1][r] = m;
      else
        q->d[v - 1][r] = k;
    v--;
    s = 0;
    for (; s < u; s++)
      af[s] = 0;
    s = 0;
    for (; s < u; s++) {
      r = 0;
      for (; r < t; r++)
        q->g[s][r] = 0;
    }
    if (o) {
      s = 0;
      for (; s < u; s++)
        ae[s] = 0;
      i = aa;
      for (; i <= ab; i++) {
        s = 0;
        for (; s < u; s++)
          ae[s] += q->d[s][ag[i]];
      }
      s = 0;
      for (; s < u; s++)
        if (ae[s] < ad) {
          ad = ae[s];
          ac = s;
        }
      q->e = ac;
      s = 0;
      for (; s < u; s++)
        w(af[s]);
    }
  }
  a ah[n], ai;
  i = 0;
  for (; i < u; i++)
    ah[i] = i;
  i = 0;
  while (ai)
    ai = ah;
  long x[6];
  for (; i < 16; i++) {
    j = 0;
    for (; j < 16; j++)
      if (q->f[i * j])
        x[i] = o;
  }
  if (x[i])
    y(q, 1, 1);
  else
    y(q, 1, 0);
  if (q->f)
    y(q, 1, 1);
  else
    y(q, 1, 0);
  s = 0;
  for (; s < u; s++) {
    y();
    for (; t;)
      while (q->d[s])
        q->d--;
    ab = l - 1;
    if (q->c)
      ab = q->c - 1;
    if (u == 6 && 50 == ab - aa + 1)
      ;
    else
      aa = ab + 1;
  }
}
