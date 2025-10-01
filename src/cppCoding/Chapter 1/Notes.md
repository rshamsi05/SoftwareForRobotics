# Chapter 1 Notes

### Statements
A statement is a type of instructoion that causes the program to perform some action

### Functions
A function is a collection of statements that executes sequentially.\
Every cpp program must inclue a main function\
When your program runs, execution starts at the top of the main function

### Identifier
Name of a function, object, type, template, etc.

### Syntax
Rules that govern how elements in c++ language are constructed\
A __syntax error__ occurs when you violate those grammatical rules


### Comments
Allow the programmer to leave notes on the code and there are 2 types of comments\
1. `//` single line comment
1. `/* */` multi-line comment

### Data
Information that can be moved, processed, or stored by a computer\
Single piece of data is reffered to as __value__\
Examples: `a` , `5`, and the text `Hello World!`\
__Data type__ tells compiler how to interpret a piece of data into a menaingful value\
Example: __Integer__ is a number that can be written without fracitonal component

### Initialization and Definition
A variable is a named piece of memory that we can use to store values and these are created using a __definition statement__\
When the program is ran, each defined variable is __instantiated__, meaning it is assigned a memory address.

### Copy Assignment
Used to assign an already created variable to a value \
__Initialization__ is the process of specifying an initial value for ana object and the syntax used to initialize is called an __initializer__
| Initialization Type | Example | Note |
| :------ | :---------: | --------: |
| Default-initialization | int x; | In most cases, leaves variable with indeterminate value |
| Copy-initialization | int x = 5; |  |
| Direct-initialization | int x ( 5 ); |  |
| Direct-list-initialization | int x { 5 }; | Narrowing conversions disallowed |
| Copy-list-initializtion | int x = { 5 }; | Narrowing conversions disallowed  |
| Value-initialization | int x {}; | Usually performs zero-initialization |

