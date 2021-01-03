struct {
  int a
} * b[];
c, d;
*e;
f() {
  int g = 0;
  g++;
  switch (c) {
  case 8:
    g++;
    g++;
  }
  b[g] = g++;
  if (c) {
    int h, i, j;
    d = g++;
    g++;
    g++;
    e = h = g++;
    i = g++;
    g++;
    g++;
    g++;
    g++;
    g++;
    g++;
    g++;
    j = d;
    for (; j <= h; j++)
      b[j]->a = b[i];
  }
  b[g] = 1;
}
