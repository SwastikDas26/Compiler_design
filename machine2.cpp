#include <iostream>
#include <string>
#include <sstream>

using namespace std;

// Function to generate machine code for an indexed assignment statement
string generateIndexedAssignmentMachineCode(const string& arrayName, int index, int value) {
    stringstream machineCode;
    machineCode << "LOAD " << arrayName << "[" << index << "], " << value;
    return machineCode.str();
}

int main() {
    // Example: Generate machine code for assigning value 20 to the element at index 2 of array 'arr'
    string arrayName = "arr";
    int index = 2;
    int value = 20;

    string machineCode = generateIndexedAssignmentMachineCode(arrayName, index, value);

    cout << "Generated machine code: " << machineCode << endl;

    return 0;
}
