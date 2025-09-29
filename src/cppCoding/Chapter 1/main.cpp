#include <iostream>

/*
    example comment
    
*/

int main() {
    std::cout << "Enter three numers: "; // ask user for a number
    int x{}; // define variable x to hold user input
    int y {};
    int z {};
    std::cin >> x; // get number from keyboard and store it in variable x
    std::cin >> y;
    std::cin >> z;
    std::cout << "You entered " << x << ", " << y << ", and " << z << ".\n";
    return 0;
}
