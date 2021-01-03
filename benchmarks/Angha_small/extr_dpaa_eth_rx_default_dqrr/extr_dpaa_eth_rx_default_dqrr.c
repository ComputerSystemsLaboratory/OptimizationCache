struct a {
  int b;
  int c;
  int d;
  int e
};
struct f {
  struct a g
};
void *h(i) {
  struct a *j;
  struct f *k = h();
  j = &k->g;
  if (l())
    j->e++;
  j->d++;
  j->c++;
}
