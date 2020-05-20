#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void readFile(unsigned char * d, unsigned char * filename);
int getFileSize(unsigned char * filename);
void assemble(unsigned char * input);

int main() {
    printf("Hello, World!\n");
    unsigned char programFile[] = "../program.txt";
    int size = 0;
    size = getFileSize(programFile);
    unsigned char programContents[size + 1];
    readFile(programContents, programFile);
    for (int a = 0; a < size; a++){
        printf("%c", programContents[a]);
    }
    printf("\nSize is: %d\n\n", size);
    assemble(programContents);
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

/**
 * @brief Translates the input to binary
 * @param input The array that you get from calling the readFile function. Must have a \0 at the end
 */
void assemble(unsigned char * input){
    unsigned char lda[] = "LDA";
    unsigned char sta[] = "STA";
    unsigned char add[] = "ADD";
    unsigned char sub[] = "SUB";
    unsigned char bra[] = "BRA";


    int inputSize = strlen(input);
    int numInstructions = 0;

    if (inputSize > 0)
        numInstructions++;

    for (int a = 0; a < inputSize; a++){
        if (input[a] == '\n')
            numInstructions++;
    }

    printf("Num. Instructions: %d \n", numInstructions);

    unsigned char instruction[4];
    instruction[3] = '\0';
    int offset = 0;
    while(numInstructions > 0){
        for (int a = 0; a < 3; a++){
            instruction[a] = input[a + offset];
        }

        if (strcmp(instruction, lda) == 0){
            printf("000");
        } else if (strcmp(instruction, sta) == 0){
            printf("001");
        } else if (strcmp(instruction, add) == 0){
            printf("010");
        } else if (strcmp(instruction, sub) == 0){
            printf("011");
        } else if (strcmp(instruction, bra) == 0){
            printf("100");
        }

        int data;
        if (input[4 + offset] == '$'){
            //immediate mode, literal data has been entered
            printf("1");
            if (input[7 + offset] == '\r'){
                //input is two chars long
                unsigned char d[3];
                d[0] = input[5 + offset];
                d[1] = input[6 + offset];
                d[2] = '\0';
                data = atoi(d);
//                printf("\nData: %d\n", data);
                offset += 9;
            } else {
                //input is one char long
                unsigned char d[2];
                d[0] = input[4 + offset];
                d[1] = '\0';
                data = atoi(d);
//                printf("\nData: %d\n", data);
                offset += 8;
            }
        } else {
            //absolute mode, address has been entered
            printf("0");
            if (input[6 + offset] == '\r'){
                //input is two chars long
                unsigned char d[3];
                d[0] = input[4 + offset];
                d[1] = input[5 + offset];
                d[2] = '\0';
                data = atoi(d);
//                printf("\nData: %d\n", data);
                offset += 8;
            } else {
                //input is one char long
                unsigned char d[2];
                d[0] = input[4 + offset];
                d[1] = '\0';
                data = atoi(d);
//                printf("\nData: %d\n", data);
                offset += 7;
            }
        }

        switch (data){
            case 0: {
                printf("0000\n");
                break;
            }
            case 1: {
                printf("0001\n");
                break;
            }
            case 2: {
                printf("0010\n");
                break;
            }
            case 3: {
                printf("0011\n");
                break;
            }
            case 4: {
                printf("0100\n");
                break;
            }
            case 5: {
                printf("0101\n");
                break;
            }
            case 6: {
                printf("0110\n");
                break;
            }
            case 7: {
                printf("0111\n");
                break;
            }
            case 8: {
                printf("1000\n");
                break;
            }
            case 9: {
                printf("1001\n");
                break;
            }
            case 10: {
                printf("1010\n");
                break;
            }
            case 11: {
                printf("1011\n");
                break;
            }
            case 12: {
                printf("1100\n");
                break;
            }
            case 13: {
                printf("1101\n");
                break;
            }
            case 14: {
                printf("1110\n");
                break;
            }
            case 15: {
                printf("1111\n");
                break;
            }
            default: printf("Invalid operand.\n");
        }

        numInstructions--;
//        printf("\n");
    }
}
