struct {
  int b;
  int c;
  int d;
  int e;
  int f;
  int g
} * a;
h, i;
j() {
  int b = &b;
  a->c = a->d = a->e = a->f = 4;
  if (b)
    a = i;
  k(a, i);
  a = 1;
  if (h)
    a->e = a;
  if (a->g)
    a->d++;
  a->e = 0;
  if (a)
    a = 4;
  a = 3;
}
