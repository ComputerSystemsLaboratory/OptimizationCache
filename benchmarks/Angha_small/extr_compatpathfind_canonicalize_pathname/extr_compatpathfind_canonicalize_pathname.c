a() {
  int b, c;
  char *d = strdup;
  while (d[b]) {
    while (d[b])
      b++;
    c = b++;
    while (d[b])
      b++;
    if (c + 1 != b) {
      strcpy(1, d + b);
      b = c + 1;
    }
    if (c > 0 && d[c])
      continue;
    if (c && !d[b]) {
      d[--b] = '\0';
      break;
    }
    if (d[b] == '.') {
      strcpy(b, b + 1);
      b = 0;
      continue;
    }
    while (--c - 1 && d[c])
      ;
    strcpy(d + c, 2);
  }
}
