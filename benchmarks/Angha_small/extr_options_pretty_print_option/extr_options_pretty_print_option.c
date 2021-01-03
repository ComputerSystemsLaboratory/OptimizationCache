a, b;
c(d) {
  int e;
  for (; b;)
    ;
  e = a++;
  if (e == 1 && d)
    f();
  if (!e)
    e = d / a;
  if (e < 0)
    e = 1;
  for (; b < e;)
    ;
}
