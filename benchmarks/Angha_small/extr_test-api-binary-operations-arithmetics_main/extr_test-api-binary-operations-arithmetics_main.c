struct a {
  int b;
  int c;
  int d
} e();
f[];
g() {
  struct a h[] = {e(), e(), e(), e(), e(), e(), e(), e(), e(), e(),
                  e(), e(), e(), e(), e(), e(), e(), e(), e(), e(),
                  e(), e(), e(), e(), e(), e(), e(), e(), e(), e()};
  for (int i; i < h; i++)
    j();
  for (int i; i < f; i++)
    j();
  struct a k[] = {e(), e(), e(), e(), e(), e(), e(), e(), e(),
                  e(), e(), e(), e(), e(), e(), e(), e(), e()};
  for (int i; i < k; i++)
    j();
}
