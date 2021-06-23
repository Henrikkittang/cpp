#pragma once
#include <array>
#include <vector>

template<typename T>
class DynamicGrid
{
private:
    uint32_t m_width, m_height, m_scl;
    std::vector<T> m_container;

public:

    DynamicGrid(){}

    DynamicGrid(uint32_t width, uint32_t height, uint32_t scl)
        :m_width(width), m_height(height), m_scl(scl),
        m_container(std::vector<T>(width, height))
    {}

    DynamicGrid(uint32_t width, uint32_t height, uint32_t scl, const std::vector<T>& grid)
        :m_width(width), m_height(height), m_scl(scl),
        m_container(grid)
    {}

    int get_width() const { return  m_width; }
    int get_height() const { return m_height; }
    int get_scl() const { return m_scl; }


    T index(int row, int column) { return m_container[column * m_width + row]; }
    const T& index(int row, int column) const { return m_container[column * m_width + row]; }

    bool out_of_bounds(int row, int column) {  return row < 0 || row >= get_width() || column < 0 || column > get_height();  }

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




