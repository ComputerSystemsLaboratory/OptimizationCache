b(e) {
  int c;
  long d, a;
again:
  while (d && d != b && a && a != b)
    d = a = f();
  if (a && a == b)
    if (d && d != b && g())
      return 1;
  if (!e)
    for (; c; c++)
      if (h())
        goto again;
  return 0;
}
