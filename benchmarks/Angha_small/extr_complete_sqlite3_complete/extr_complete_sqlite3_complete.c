*a;
b() {
  while (*a) {
    while (*a)
      a++;
    int c = a++;
    while (*a && *a != c)
      ;
    if (*a)
      return 0;
  }
}
