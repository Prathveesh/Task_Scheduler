#include <iostream>
#include <thread>
#include "../include/task.h"

using namespace std;

void print(void){
    cout<<"Hello from inside thread!!!\n";
}


int main(){

    thread t1(task1);
    thread t2(task2);

    t1.join();
    t2.join();

    cout<<"All tasks are completed\n";
    return 0;
}
