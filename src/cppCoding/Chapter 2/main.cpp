#include <iostream>



void funcA() {
    std::cout << "This is the base function call" << '\n';
}


//Example function
void funcB(int){ // passing in unnamed variable to test --> still compiles and works normally!
    funcA();
    std::cout << "This function contains the first function call" << '\n';
}

//get input from user
int getValueFromUser() {
    std::cout << "Enter an integer: ";
    int input{};
    std::cin >> input;
    return input;
}

//Function with parameters
int sum(int x, int y){
    return x + y;
}

//multiply function
int mult(int x, int y){
    return x * y;
}

//Practice function
int doubleNumber(int num){
    return num * 2;
}

int main(){
    // std::cout << "Starting point" << '\n';
    funcB(7);
    // std::cout << "Ending point" << '\n';
    // int num {getValueFromUser()};
    // std::cout << " doubled is: " << num * 2 << '\n';
    // std::cout << "The sum of 10 and 5 is: " << sum(mult(2,5),5) << "\n";
    std::cout << "Please enter a number: " << '\n';
    int input {};
    std::cin >> input;
    std::cout << "Double of " << input << " is: "  << doubleNumber(input) << '\n';
    //return 0;
}
