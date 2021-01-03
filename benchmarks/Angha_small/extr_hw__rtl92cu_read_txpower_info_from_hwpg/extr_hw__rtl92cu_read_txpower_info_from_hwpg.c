typedef a;
struct b {
  int **c;
  int **aa;
  int **d;
  int e;
  int *f;
  long **g;
  int *h;
  int *j;
  int *k;
  int l;
  int m;
  int n
};
o, p, r, s, t, u, v, w, ab, ac, x;
*q;
y(int z, *ad) {
  struct b *ae = af();
  a ag, ah, ai, i;
  ag = 0;
  for (; ag < 2; ag++) {
    i = 0;
    for (; i < 3; i++) {
      ae->c[ag][i] = ad[p + ag * 3 + i];
      ae->aa[ag][i] = ad[r + ag * 3 + i];
      ae->c[ag][i] = q;
      ae->aa[ag][i] = q;
    }
  }
  i = 0;
  for (; i < 3; i++) {
    if (z)
      ai = ad[s + i];
    else
      ai = o;
    ae->d[ab][i] = ai & 5;
    ae->d[ac][i] = (ai & 40) >> 4;
  }
  ag = 0;
  for (; ag < 2; ag++) {
    i = 0;
    for (; i < 3; i++)
      aj(u, v, ag, i, ae->c[ag][i]);
  }
  ag = 0;
  for (; ag < 2; ag++) {
    i = 0;
    for (; i < 3; i++)
      aj(u, v, ag, i, ae->aa[ag][i]);
  }
  ag = 0;
  for (; ag < 2; ag++) {
    i = 0;
    for (; i < 3; i++)
      aj(u, v, ag, i, ae->d[ag][i]);
  }
  ag = 0;
  for (; ag < 2; ag++) {
    i = 0;
    for (; i < 14; i++) {
      ae->f[i] = ae->aa[ah];
      if (ae->aa[ag][ah] - ae->d[ag][ah])
        ae->g[ag][i] = ae->aa[ag] - ae->d[ah];
      else
        ae->g[ag][i] = 0;
    }
    i = 0;
    for (; i < 14; i++)
      aj(u, w, "", ag, i, ae->e, ae->f[i], ae->g[ag][i]);
  }
  i = 0;
  for (; i < 3; i++)
    if (z) {
      ae->h[i] = ad[t + i];
      ae->j[i] = ad[t + 3 + i];
    } else
      ae = ae->j[i] = 0;
  i = 0;
  for (; i < 14; i++) {
    ak(i);
    if (z)
      ai = ae->k[ac] = 0;
  }
  i = 0;
  for (; i < 14; i++)
    aj(u, w, i, ae->k);
  i = 0;
  for (; i < 14; i++)
    aj(u, w, i, x);
  i = 0;
  for (; i < 14; i++)
    aj(u, w, i, ae->k);
  if (z)
    ae = ad;
  else
    ae->l = w;
  ae->m = ai & 5;
  if (ad || z)
    ae->n = 1;
}
