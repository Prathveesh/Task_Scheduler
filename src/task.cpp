#include "task.h"


using namespace std;

void task1(){

    for(int i=0; i<5; i++){
        cout<<"[Task 1] Running iteration " << i + 1 << endl;
        this_thread::sleep_for(chrono::milliseconds(500));
    }
}

void task2(){

    for(int i=0; i<5; i++){
        cout<<"[Task 2] Running iteration " << i + 1 << endl;
        this_thread::sleep_for(chrono::milliseconds(700));
    }
}