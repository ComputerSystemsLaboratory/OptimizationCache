struct {
  long a
} * b;
c, d, e;
f() {
  switch (d) {
  case 0:
    if (b)
      b[c].a = 9;
    e = b;
  case 1:
    b[c].a = 0;
  }
}
