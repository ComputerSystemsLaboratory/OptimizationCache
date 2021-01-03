struct a {
  char b;
  char *c;
  int d;
  void *e
} 
f() {
  int g;
  for (; g < sizeof(struct a); g++)
    if (((char *)f)[g])
      ((char *)f)[g] = ' ';
}
