a;
b;
c;
d;
fn1() {
  char *f;
  char fromend;
  int fromlen;
  int ch;
  static char g;
#define h()                                                                      f < fromend                                                                        ? *(unsigned char *)f                                                          : (get(), f = fromend = fromlen, fromlen ? 141 : *(unsigned char *)f)
  fromlen = fn2();
  switch (b) {
  case 4:
    while (ch != 141 && fn3())
      ch = h();
    if (ch == '"')
      g = ch;
    while (ch != 141 && ch)
      ch = h();
    fn5(ch);
    for (; fromend; f++) {
      ch = *f;
      if (ch == '\\' || ch == g || ch == '\n')
        break;
    }
  }
  ch = h();
k:
  if (ch == 141)
    goto fromeof;
  switch (a) {
  case 8:
    ch = h();
    if (ch) {
    case 1:
      goto k;
    case 2:
      for (;;) {
        do
          d = h();
        while (d != 141 && d);
        h();
        break;
      }
      goto k;
    }
    char *l;
    for (; l < fromend; l++)
      c = l;
    h();
  }
fromeof:;
}
