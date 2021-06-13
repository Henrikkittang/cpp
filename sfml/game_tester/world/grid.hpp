#pragma once
#include<array>
#include<vector>


template<typename T, uint32_t W, uint32_t H>
class Grid
{
private:
    std::array<T, W*H> m_container{};


public:

    constexpr int get_width() const { return W; }
    constexpr int get_height() const { return H; }

    T& index(int row, int column) { return m_container[column + row]; }
    
    // const T& getValue(int row, int column) const { return m_container[column + row]; }
    // void setValue(int row, int column, const T& value) { m_container[column + row] = value; }

    bool out_of_bounds(int row, int column) {  return row < 0 || row >= W || column < 0 || column > H;  }

    std::vector<T> get_neighbours(int row, int column, bool diagonal=false)
    {
        std::vector<std::array<int, 2>> neighbours;
		diagonal ? neighbours.reserve(8) : neighbours.reserve(4);

		for(int t = -1; t < 2; t++){
			for(int q = -1; q < 2; q++){
				if(diagonal && (abs(t) == abs(q))) continue;

                if(!out_of_bounds(row+q, column+t))    
                    neighbours.emplace_back(index(row+q, column+t));
			}
		}

		return std::move( neighbours );
    }

};
