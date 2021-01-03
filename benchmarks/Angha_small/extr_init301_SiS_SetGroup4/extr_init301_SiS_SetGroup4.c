short a;
b() {
  unsigned short c = a;
  if (a == 0)
    ;
  else if (c == 4)
    c *= 5;
  else
    c *= 20;
  d(c);
}
