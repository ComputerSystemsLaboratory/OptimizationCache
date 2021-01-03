struct a {
  int b
} c() {
  struct a *a;
  int d;
  a = d = 1248;
  for (; d < 1256; d += 4)
    e();
  d = 1288;
  for (; d < 1352; d += 4)
    f(a->b);
  f();
  d = 1536;
  for (; d < 1600; d += 4)
    f(a->b);
  d = 1600;
  for (; d < 1664; d += 4)
    f(a->b);
  d = 1728;
  for (; d < 1792; d += 4)
    f(a->b);
  d = 1792;
  for (; d < 1856; d += 4)
    f(a->b);
  d = 1856;
  for (; d < 1920; d += 4)
    f(a->b);
  f();
  d = 2148;
  for (; d < 2164; d += 4)
    f(a->b);
  d = 8;
  for (; d <= 424; d += 6)
    f();
  d = 8;
  for (; d < 200; d += 4)
    f(a);
}
