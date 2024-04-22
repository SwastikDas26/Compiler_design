#include <iostream>
#include <string>
#include <sstream>

using namespace std;

// Function to generate machine code for an assignment statement
string generateMachineCode(const string& variable, int value) {
    // Here, we'll assume a hypothetical assembly language where MOV is the instruction for assignment
    // Let's generate machine code to move the value into the variable

    // The machine code might depend on the architecture and assembly language syntax
    // This is just a simplified example

    stringstream machineCode;
    machineCode << "MOV " << variable << ", " << value;
    return machineCode.str();
}

int main() {
    // Example: Generate machine code for assigning value 10 to variable x
    string variable = "x";
    int value = 10;

    string machineCode = generateMachineCode(variable, value);

    cout << "Generated machine code: " << machineCode << endl;

    return 0;
}
