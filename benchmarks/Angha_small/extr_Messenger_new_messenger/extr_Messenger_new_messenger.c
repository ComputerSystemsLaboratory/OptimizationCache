struct a {
  int b;
  int c;
  int d;
  int e;
  long f;
  long g;
  long h
} i() {
  struct a *j = calloc(1, sizeof(struct a));
  k();
  if (j)
    free(j);
  j->g = j->d = j->e;
  if (j->h && j->f)
    l(j->c);
}
