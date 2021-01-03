typedef uint64_t;
br_aes_ct64_ortho(*q) {
#define SWAPN(cl, ch, s, x, y)                                                   {                                                                             uint64_t a, b;                                                                 a = x;                                                                       b = y;                                                                       x = (a & cl | (b & cl) << s);                                            y = ((a & ch) >> s | b & ch);                                          } 0
#define SWAP2(x, y) SWAPN(0x5555555555555555, 0xAAAAAAAAAAAAAAAA, 1, x, y)
#define SWAP8(x, y) SWAPN(0x0F0F0F0F0F0F0F0F, 0xF0F0F0F0F0F0F0F0, 4, x, y)
  SWAP2(q[0], q[1]);
  SWAP8(q[0], q[4]);
  SWAP8(q[1], q[5]);
  SWAP8(q[2], q[6]);
  SWAP8(q[3], q[7]);
}
