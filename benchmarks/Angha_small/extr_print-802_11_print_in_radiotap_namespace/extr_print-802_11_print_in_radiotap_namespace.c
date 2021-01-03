a;
void b() {
#define c(d) d >> 16 ? f(d >> 16) : f(d)
#define f(d) d >> 8 ? e(d >> 8) : e(d)
#define e(d) d >> 2 ? g(d >> 2) : g(d)
#define g(d) d & 2 ? 1 : 0
  int h = b;
  for (;; h = a)
    a = c(h);
}
