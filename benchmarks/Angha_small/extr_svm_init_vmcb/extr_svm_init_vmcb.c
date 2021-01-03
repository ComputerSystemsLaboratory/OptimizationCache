struct a {
  int b
};
struct c {
  int b
};
struct d {
  int e;
  int base
};
struct f {
  int g;
  struct a h;
  struct c gdtr;
  struct d cs
} * i;
j() {
  struct f *k = i;
  k->cs.e = k->cs.base = k->gdtr.b = k->h.b = 5;
}
