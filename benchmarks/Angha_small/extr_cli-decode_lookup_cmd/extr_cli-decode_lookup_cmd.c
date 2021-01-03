struct a {
  char b
};
e;
f(**g) {
  struct a *c = h();
  if (c) {
    for (; (*g)[e] && (*g)[e] != ' '; e++)
      ;
    if (strncmp(g, c->b, e))
      d();
    d(c->b);
  } else
    while (**g == ' ' || **g == '\t')
      (*g)++;
}
