void sub1() {
  int a, b;
  ...       // EXECUTION POINT 1
}

void sub2() {
  int b, c;
  ...       // EXECUTION POINT 2
  sub1();
}

int main() {
  int c, d;
  ...       // EXECUTION POINT 3
  sub2();
  return 0;
}
