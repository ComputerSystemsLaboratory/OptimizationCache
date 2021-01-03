struct {
  int a;
  char *b
} * c;
d;
e() {
  int f;
  while (f < c->a)
    if (c->b[f]) {
      f++;
      if (f < c->a && c->b[f] == '(') {
        while (f < c->a && c->b)
          g(c[f++]);
        if (f < c->a)
          f++;
        else
          h();
      } else if (d && f < c->a && c->b[f])
        i();
    }
}
