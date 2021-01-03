a, b, c;
d() {
  int e = 0, f;
  if (c)
    e++;
  if (!b || c != b)
    e++;
  if (a)
    e++;
  if (e)
    for (; f; f++)
      if (g())
        break;
}
