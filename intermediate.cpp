#include <iostream>
#include <sstream>
#include <string>

// Function to generate a unique temporary variable name
std::string generateTemp() {
    static int count = 0;
    std::ostringstream oss;
    oss << "t" << count++;
    return oss.str();
}

// Function to generate TAC for If statements
void generateIfTAC(const std::string& condition, const std::string& labelTrue, const std::string& labelFalse) {
    std::cout << "if " << condition << " goto " << labelTrue << std::endl;
    std::cout << "goto " << labelFalse << std::endl;
}

// Function to generate TAC for While statements
void generateWhileTAC(const std::string& condition, const std::string& labelStart, const std::string& labelEnd) {
    std::cout << labelStart << ": ";
    generateIfTAC(condition, labelEnd, labelEnd);
}

int main() {
    // Example If statement: If x > 0 then
    std::string condition = "x > 0";
    std::string labelTrue = generateTemp(); // Label for true condition
    std::string labelFalse = generateTemp(); // Label for false condition

    generateIfTAC(condition, labelTrue, labelFalse);

    // Example While statement: While x > 0 do
    std::string labelStart = generateTemp(); // Label for start of loop
    std::string labelEnd = generateTemp(); // Label for end of loop

    generateWhileTAC(condition, labelStart, labelEnd);

    return 0;
}
