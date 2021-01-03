a;
*b, *c;
d() {
  int e;
  if (a)
    for (; e < a; e++)
      if (b[e])
        goto f;
  c[e] = 0;
f:;
}
