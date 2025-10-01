#include <iostream>


int main() {
    /*
    Program to return the input of a user and multiply it by 2
    */

   std::cout << "Enter an integer: ";
   int input {};
   std::cin >> input;
   std::cout << "Double that number is: " << input * 2 << '\n';
   std::cout << "Triple that number is: " << input * 3 << '\n';
   return 0;
}
