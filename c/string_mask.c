#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  FILE *file = argv[1] ? fopen(argv[1], "r") : fopen("string_mask.txt", "r");
  char line[1024];

  while (fgets(line, 1024, file) != NULL) {
    char *lhs = line, *rhs = strchr(line,' ');
    for(*rhs++ = '\0'; *lhs && *rhs; ++lhs, ++rhs){
      if(*rhs == '1') {
        *lhs -= 32;
      }
    }
    puts(line);
  }
  return 0;
}
