#include <iostream>

int main(){
    std::cout << "Enter an integer: " << '\n';
    int input1 {};
    std::cin >> input1;
    std::cout << "Enter another integer: " << '\n';
    int input2 {};
    std::cin >> input2;
    std::cout << input1 << " + " << input2 << " is " << input1 + input2 << '\n';
    std::cout << input1 << " - " << input2 << " is " << input1 - input2 << '\n';
    return 0;
}
