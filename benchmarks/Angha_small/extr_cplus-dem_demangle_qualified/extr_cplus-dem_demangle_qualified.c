a(**b) {
  int c = d();
  while (c-- > 0) {
    if (*b[0] == '_')
      (*b)++;
    if (*b[0])
      (*b)++;
    if (c > 0)
      e();
  }
}
