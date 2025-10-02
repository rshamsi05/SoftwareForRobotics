#include <iostream>



void funcA() {
    std::cout << "This is the base function call" << '\n';
}


//Example function
void funcB(){
    funcA();
    std::cout << "This function contains the first function call" << '\n';
}

int main(){
    std::cout << "Starting point" << '\n';
    funcB();
    std::cout << "Ending point" << '\n';
    return 0;
}
