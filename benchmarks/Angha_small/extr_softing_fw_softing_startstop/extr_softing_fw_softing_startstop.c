a, b;
c() {
  int d, e = b;
  if (e & 1 && e & 2)
    goto f;
  for (; g();)
    if (e & 1)
      return 0;
f:
  d = -a;
  for (; g();)
    ;
  return d;
}
