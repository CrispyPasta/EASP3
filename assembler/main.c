#include <stdio.h>
void readFile(unsigned char * d, unsigned char * filename);
int getFileSize(unsigned char * filename);

int main() {
    printf("Hello, World!\n");
    unsigned char programFile[] = "../program.txt";
    int size = 0;
    size = getFileSize(programFile);
    unsigned char programContents[size + 1];
    readFile(programContents, programFile);
    printf("Size is: %d\n", size);
    return 0;
}


void readFile(unsigned char * fileBuffer, unsigned char * filename){
    FILE *f;
    f = fopen(filename, "rb");  //open binary file
    int fileSize = 0;

    if (f == NULL){
        printf("Error, file not found.\n");
    } else {
        fileSize = getFileSize(filename);
        printf("Reading %d bytes from file.\n", fileSize);
        fread(fileBuffer, fileSize + 1, 1, f);
    }

    fclose(f);
}


int getFileSize(unsigned char * filename){
    FILE *f;
    f = fopen(filename, "rb");  //open binary file
    int fileSize = 0;

    if (f == NULL){
        printf("Error, file not found.\n");
    } else {
        fseek(f, 0L, SEEK_END);
        fileSize = ftell(f);
    }

    fclose(f);
    return fileSize;
}
