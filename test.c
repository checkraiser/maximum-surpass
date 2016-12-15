#include <HsFFI.h>
#include "surparser_stub.h"
#include <stdio.h>

int main(int argc, char *argv[])
{
  hs_init(&argc, &argv);
  char str[] = "GENERATING";
  int result = 0;
  result = msc_hs(str);
  printf("MSC: %d\n", result);
  hs_exit();
  return 0;
}
