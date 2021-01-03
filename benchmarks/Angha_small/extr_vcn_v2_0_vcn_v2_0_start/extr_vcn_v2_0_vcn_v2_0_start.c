a;
b() {
  int c;
  a = 0;
  for (;; ++a) {
    int d;
    c = 0;
    for (; c < 100; ++c) {
      d = e();
      if (d & 2)
        break;
      f();
    }
    if (d & 2)
      break;
  }
}
