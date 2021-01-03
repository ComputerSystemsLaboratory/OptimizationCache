a;
b(void *c, void *d) {
  int *e = c;
  a = d;
  *e = *(e + 2) = *(e + 5) = ((int *)d)[0] = ((int *)d)[1];
}
