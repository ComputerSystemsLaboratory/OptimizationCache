a, b;
c() {
  int d = e();
  if (b && (b & 8 || d != 2))
    f();
  if (!(b & 128) && d == 3 || b & 128 && d)
    e();
  if (b == 8)
    ;
  else if (b == 4 && a)
    ;
  else if (b)
    g();
}
