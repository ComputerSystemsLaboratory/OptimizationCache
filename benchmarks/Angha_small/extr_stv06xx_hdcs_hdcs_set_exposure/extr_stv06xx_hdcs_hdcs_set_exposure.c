struct a {
  int *b
} c() {
  struct a *a;
  int b = a->b;
  d();
  e();
}
