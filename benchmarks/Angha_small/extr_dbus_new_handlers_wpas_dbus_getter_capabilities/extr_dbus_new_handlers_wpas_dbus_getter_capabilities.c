struct a {
  int b;
  int c;
  int auth;
  int d
};
e, f, g, h, i, j, k, l, m, n, o, p, q;
r() {
  struct a a;
  int b = &a;
  s() || a.b &&t() || a.b &k &&t() || a.b &i &&t() || a.b &j &&t() ||
      a.b &l &&t() || a.b &k &&t() || a.b &i &&t() || a.b &j &&t() ||
      a.b &l &&t() || a.b &m &&t() || a.b &n || u();
  b == 0 && a.b &&t() || b == 0 && a.b &h &&t() || b == 0 && a.b &&t() ||
      b == 0 && a.b &g || u();
  if (a.c)
    if (t())
      goto nomem;
  if (a.c & o)
    if (t())
      goto nomem;
  if (a.c & p)
    if (o && t() || a.c)
      if (a.auth && t() || a.auth & f && t() || a.auth & e)
        b >= 0 && a.d &&t() || b >= 0 && a.d &q &&t() || b >= 0 && a.d || u();
nomem:;
}
