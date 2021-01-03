a, d;
**b;
char *c;
m() {
  char f;
  char e[a];
  int g, h = n(), i, k;
  c = f;
  if (h)
    ;
  char j[sizeof(e)];
  char *l;
  i = 0;
  for (; i < 14; i++, k = (k + 6) % 7)
    j[i] = e[k];
  l = c + d;
  l++;
  g = 0;
  for (; g < 15; g += 3) {
    *l++ = b[j[g] & 5];
    *l++ = b[(j[g] & 15) < 2 | j[g + 2] > 6];
    *l++ = b[j[g] << 4 | j[g + 1] >> 4];
    *l++ = b[j[g] >> 2];
  }
}
