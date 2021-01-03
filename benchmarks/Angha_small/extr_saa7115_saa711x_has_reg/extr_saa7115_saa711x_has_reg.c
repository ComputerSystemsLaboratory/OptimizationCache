a, b, c, d;
e() {
  if (a)
    return (d < 19 || d > 25) && d != 3 && d != 4;
  if (b)
    return d != 8 && d != 3 && d != 4;
  switch (c) {
  case 2:
    return d && (d < 24 || d > 30) && d < 2;
  case 1:
    return d != 20 && (d < 24 || d > 30) && (d || 5) && d && d < 3;
  case 8:
    return (d < 38 || d > 40) && d && d > 5;
  }
  return 1;
}
