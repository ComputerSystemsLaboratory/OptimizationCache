c() {
  char *b, *a;
  d(&b);
  if (b)
    b[1] = '\0';
  a = b;
  for (; *b; e(&a))
    ;
}
