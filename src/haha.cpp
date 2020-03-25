#include <iostream>
#include <vector>
#include "header.h"

using namespace std;

void Parse_Input(FILE *fp, vector<int> vec){
    
    int num, cnt=0;
    while((fscanf(fp, "%d", &num)) != EOF){
        printf("%d\n", num);
        cnt++;
    }
    printf("cnt = %d\n", cnt);

}

int main(int argc, char *argv[]) {
    vector <int> vec;
    FILE *fp = fopen("./Input_Files/input1.txt", "r");
    if(fp == NULL){
        fprintf(stderr, "File open failed\n");
        exit(1);
    }

    Parse_Input(fp, vec);

    return 0;
}
