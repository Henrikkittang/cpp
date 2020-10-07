#include<iostream>
#include<vector>
#include<string>
#include<fstream>
#include <sstream>


std::vector<std::string> read_file_lines(const std::string& a_filename)
{
	std::fstream file;    // initilize file-handler class
	file.open(a_filename, std::ios::in);  // opens file in read mode

	if(!file.is_open()){
	}

	std::vector<std::string> lines;
	while(!file.eof()){
		char line[128];
		file.getline(line, 128);

		std::stringstream stringStream;
		stringStream << line;

		lines.push_back(line);
	}
	return lines;
}

std::vector<std::vector<int>> read_map_from_file(std::string a_filename)
{
	std::vector<std::string> lines = read_file_lines(a_filename);
	std::vector<std::vector<int>> data;

	for(const auto& line : lines)
	{
		if(line.size() == 0) continue;

		std::string cur_num = "";
		std::vector<int> temp;
		bool store_num = false;
		for(auto& c : line)
		{
			int ascii = (int)c;
			if(ascii >= 48 && ascii <= 57){
				cur_num += c;
				store_num = true;
			}else if(store_num){
				temp.push_back( std::stoi(cur_num) );
				cur_num = "";
				store_num = false;
			}
		}
		if(store_num) temp.push_back( std::stoi(cur_num) );
		data.push_back(temp);
	}
	return data;
}

void dump_data_to_file(std::string a_filename, std::vector<std::vector<int>> big_data)
{
	std::ofstream ofs;
	ofs.open(a_filename, std::ofstream::out | std::ofstream::trunc);
	ofs.close();

	for(const auto data : big_data)
	{
		std::fstream file;    // initilize file-handler class
		file.open(a_filename, std::ios_base::app);  // opens file in write mode

		file << "[" << data[0] << "," << data[1] << "]" << ":" << data[2] << "\n";
		file.close();
	}

}




