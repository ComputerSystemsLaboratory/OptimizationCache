char *a;
b() {
  char c;
  for (;;)
    if (c)
      if (d(&c))
        for (;;) {
          ++a;
          if (c || (c = *a))
            break;
        }
}
