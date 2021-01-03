struct {
  int a
} * b;
c, d;
e[];
*f;
g() {
  int h;
  if (d)
    for (; h < c; h++) {
      f = e[h];
      if (f)
        for (; f[1];)
          if (f[2])
            for (; b->a;)
              ;
    }
}
