#include <iostream>
#include <vector>
#include "header.h"
#include <algorithm>


using namespace std;

void Parse_Input(FILE *fp, vector<int> *vec){
    
    int num, cnt=0;
    while((fscanf(fp, "%d", &num)) != EOF){
        vec->push_back(num);
        /* printf("%d\n", num); */
        cnt++;
    }
}

int main(int argc, char *argv[]) {
    vector <int> vec;
    FILE *fp = fopen("../Input_Files/input1.txt", "r");
    if(fp == NULL){
        fprintf(stderr, "File open failed\n");
        exit(1);
    }

    Parse_Input(fp, &vec);

    printf("size = %lu\n", vec.size());
    /* for(int i=0; i<vec.size(); i++){ */
    /*     cout << vec[i] << endl; */
    /* } */

    sort(vec.begin(), vec.end());
    for(unsigned int i=0; i<vec.size(); i++){
        cout << vec[i] << endl;
    }

    return 0;
}
