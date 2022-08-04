#include <stdio.h>
#include <stdlib.h>

int disassemble(unsigned char* buf, int pc);

int main(int argc, char **argv) {
  // Read the file as a binary
  if(argc != 2) {
    printf("Please provide the rom file...");
    exit(1);
  }
  
  FILE *code_file = fopen(argv[1], "rb");

  if(code_file == NULL){
    printf("Error, can not open file: %s!", argv[1]);
    exit(1);
  }

  // Save to file into a buffer
  fseek(code_file, 0, SEEK_END);
  int file_size = ftell(code_file);
  fseek(code_file, 0, SEEK_SET);

  unsigned char *code_buffer = malloc(file_size);
  fread(code_buffer, file_size, 1, code_file);
  fclose(code_file);

  // Perform Disassembly
  int pc = 0; // program counter;

  while (pc < file_size) {
    pc += disassemble(code_buffer, pc);
  }
  free(code_buffer);
  return 0;
}

int disassemble(unsigned char *buf, int pc) {
  unsigned char* opcode = &buf[pc];
  int opbyte = 1; // decide how much we increase pc
  switch (*opcode) {
  case 0x00:
    printf("NOP");
    break;
    default:
      printf("Unknown opcode 0x%02x", *opcode);
      break;
  }
  printf("\n");
  return opbyte;
}
