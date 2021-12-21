#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char *addstr(char *strg1, char *strg2) {
    int size = strlen(strg1) + strlen(strg2); 
    char *newStr = (char *)malloc(size);
    strcat(newStr,strg1);
    strcat(newStr,strg2);

    
    return newStr;
}

char *mulstr(char *str, double mult) {
    int size = strlen(str)*mult;
    char *newStr = (char *)malloc(size);

    
    for(int i = 0; i < mult; i++) {
        strcat(newStr, str);
    }

    return newStr;
}