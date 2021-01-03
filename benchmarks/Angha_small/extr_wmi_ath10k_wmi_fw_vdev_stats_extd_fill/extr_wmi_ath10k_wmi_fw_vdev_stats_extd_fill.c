a, b, c, d;
e() {
  if (a)
    f();
  if (d & a)
    f();
  if (a)
    f();
  if (c & a)
    f();
  if (a)
    f();
  if (b & a)
    f();
  if (a)
    f();
}
