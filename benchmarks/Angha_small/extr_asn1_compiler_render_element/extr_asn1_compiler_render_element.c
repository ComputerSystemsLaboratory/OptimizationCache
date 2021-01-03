struct a {
  int b;
  int c;
  int d;
  int action;
  struct a *children;
  struct e *f
};
struct e {
  int g
};
h;
void i(*j, struct a *k, struct a *n) {
  char a, *b;
  int l = 0, m = 0;
  if (k->b || n->b)
    l = 1;
  if (k->f && k->f->g > 1 || l)
    m = 1;
  if (k->f && j)
    o();
  a = k->b || n->b;
  b = k->action;
  switch (k->c) {
  case 5:
    q();
    goto p;
  case 9:
    i(j, k->children, k);
    return;
  case 0:
    q(j, "ASN1_OP_%sMATCH%s%s,", a, m ?: "", l ? "_OR_SKIP" : "");
    break;
  case 4:
    goto p;
  case 8:
    if (k == k > n)
      goto p;
  default:
    q(j, "ASN1_OP_%sMATCH%s%s,", a, b, l ? "_OR_SKIP" : "");
  }
  if (h && n->d && n)
    ;
  else
    q(n->d);
p:
  switch (k->c) {
  case 0:
    if (k->f)
      q(j, "", b);
    else
      q(j, "ASN1_OP_END_SET_OF%s\n", b);
    q();
  case 4:
    for (; k->children;)
      ;
  }
  if (k->action)
    q();
}
