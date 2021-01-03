*a;
b, c, d;
e(f) {
  for (;;) {
    e(a);
    if (d == 0)
      goto end;
    if (d == 2 || a >= f) {
      c = a;
      break;
    }
  }
  while (a < b)
    e();
end:;
}
