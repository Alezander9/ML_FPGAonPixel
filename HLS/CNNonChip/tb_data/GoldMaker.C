#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>

int main() {
    std::ifstream file1("tb_input_features_small_quan.dat");
    std::ifstream file2("golden_small.dat");
    std::ofstream outputFile("GoldenIO.csv");

    std::string line1, line2;

    using DataType = std::string;

    while (getline(file1, line1) && getline(file2, line2)) {
        std::istringstream ss1(line1);
        std::vector<DataType> values(106);
        
        for (int i = 0; i < 106; ++i) {
            ss1 >> values[i];
        }

        std::istringstream ss2(line2);
	ss2 >> values[105];

	for (int i = 0; i < 105; ++i) {
	    outputFile << values[i] << ",";
	}
	outputFile << values[105] << std::endl;
    }

    file1.close();
    file2.close();
    outputFile.close();
    return 0;
}


