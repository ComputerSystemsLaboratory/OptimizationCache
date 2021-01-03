struct a {
  struct a *aa
} * b;
c, d, e;
f() {
  int g;
  for (;; g++) {
    if (d)
      continue;
    h();
    for (; c;)
      i(g);
    b[g].aa = j(g);
    if (e)
      goto ae;
  }
ae:
  for (; g;)
    ;
}
