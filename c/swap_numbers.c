#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
  FILE *file = argv[1] ? fopen(argv[1], "r") : fopen("swap_numbers.txt", "r");
  char line[1024];

  while (fgets(line, 1024, file)) {
    int i;
    int cur_pos;
    char temp = 'A';

    for(i = 0, cur_pos = 0; i < sizeof(line); i++) {
      if(isdigit(line[i]) && temp == 'A') {
        temp = line[i];
        cur_pos = i;
      } else if(isdigit(line[i]) && temp != 'A') {
        line[cur_pos] = line[i];
        line[i] = temp;
        temp = 'A';
      }
    }
    temp = 'A';
    printf("%s", line);
  }

  return 0;
}
