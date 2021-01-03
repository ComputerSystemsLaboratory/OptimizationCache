a;
b() {
  int c;
  if (d())
    e(b, 0);
  else
    e(b, 6);
  c = 0;
  for (; c < 60; c++)
    e();
  c = 0;
  for (; c < 60; c++)
    e();
  c = 0;
  for (; c < 3; c++)
    e(a);
  for (; c < 43; c++)
    e(a);
}
