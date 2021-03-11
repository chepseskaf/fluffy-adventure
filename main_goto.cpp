#include <iostream>

int main() {
  int count = 0;
begin : { count++; }
  if (count < 10)
    goto begin;
  return 0;
}
