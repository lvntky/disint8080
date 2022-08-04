#include <stdio.h>
#include <stdlib.h>


int main(int argc, char **argv) {
  if(argc != 2) {
    printf("Please provide the rom file...");
    exit(1);
  }
  
  FILE *code_file = fopen(argv[1], "rb");

  if(code_file == NULL){
    printf("Error, can not open file: %s!", argv[1]);
    exit(1);
  }

  // fteel
  fseek(code_file, 0, SEEK_END);
  int file_size = ftell(code_file);
  fseek(code_file, 0, SEEK_SET);

  char *code_buffer = malloc(file_size);
  fread(code_buffer, file_size, 1, code_file);
  fclose(code_file);

  int i = 0;
  while (code_buffer[i] != '\0') {
    printf("%c", code_buffer[i]);
    i++;
  }
  free(code_buffer);
  return 0;
}
