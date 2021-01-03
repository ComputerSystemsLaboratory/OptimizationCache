a() {
  char *b;
#define c()                                                                    \
  while (*b == ' ' || *b == '\t')                                              \
    b++;                                                                       \
  while (0)
d:
  c();
  if (*b)
    b++;
  if (*b)
    b++;
  if (*b && b[-1] == ':') {
    b++;
    if (*b)
      b++;
    if (*b && b[-1])
      goto d;
  }
}
