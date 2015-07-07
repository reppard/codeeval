#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  FILE *file = argv[1] ? fopen(argv[1], "r") : fopen("string_mask.txt", "r");
  char line[1024];

  while (fgets(line, 1024, file)) {
    int line_length = strlen(line);
    int word_length = (line_length / 2);
    char word[word_length];
    char cipher[word_length];

    int i;

    for(i = 0; i < word_length; i++) {
      word[i] = line[i];
      cipher[i] = line[i+word_length];
    }

    word[word_length-1] ='\0';
    cipher[word_length-1] = '\0';

    for(i = 0; i < word_length - 1 ; i++) {
      if(cipher[i] == '1') {
        word[i] -= 32;
      }
    }
    printf("%s\n", word);
  }
  return 0;
}
