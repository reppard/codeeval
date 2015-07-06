#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  char *left_arrow = "<--<<";
  char *right_arrow = ">>-->";
  FILE *file = argv[1] ? fopen(argv[1], "r") : fopen("strings_and_arrows.txt", "r");
  char line[1024];

  while (fgets(line, 1024, file)) {
    int i;
    int count;
    for(i = 0, count = 0; i < strlen(line) - 4; i++) {
      if(line[i] == '<' || line[i] == '>'){
        char arrow[] = { line[i] , line[i+1], line[i+2],
                         line[i+3], line[i+4], '\0' };
    
        if(!strcmp(arrow, left_arrow) || !strcmp(arrow, right_arrow)) {
          count++;
        }
      }
    }
    printf("%d\n", count);
  }
  return 0;
}
