typedef a;
struct b {
  int c;
  int d
};
struct e {
  int *g
};
struct h {
  struct b j;
  struct e k;
  int *l
} m() {
  struct h *eep = m;
  a f[8], n[8];
  int i;
  if (eep->j.c) {
    i = 0;
    for (; i < 8; i++) {
      n[i] = eep->k.g[i];
      f[i] = o(eep->l[i]);
    }
    p(f, n);
    if (eep->j.d & 2)
      q();
    if (eep->j.d & 4)
      q();
    if (eep->j.d & 1)
      q();
    if (eep->j.d & 2)
      q();
    if (eep->j.d & 4)
      q();
    if (eep->j.d & 1)
      q();
    if (eep->j.d & 2)
      q();
    if (eep->j.d & 4)
      q();
  }
}
