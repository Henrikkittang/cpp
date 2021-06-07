#pragma once
#include <vector>
#include <unordered_set>

#include "maze_visualsation.hpp"


struct PositionHash {
	size_t operator()(std::array<int, 2> v) const {
        return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
    }
};


#define Set std::unordered_set<std::array<int, 2>, PositionHash>

class KruskalUnion
{
private:
    std::vector<Set> m_container;
    
public:

    KruskalUnion(){}

    KruskalUnion(int width, int height)
    {
        for(int y = 0; y < height; y += 2){
            for(int x = 0; x < width; x += 2){
                Set set;
                set.insert({x, y});
                m_container.emplace_back(std::move(set));
            }
        }
    }

    

    int find(std::array<int, 2> pos)
    {
        for(int i = 0; i < m_container.size(); i++)
            if(m_container[i].find(pos) != m_container[i].end())
                return i;
        return -1;
    }

    void join(int idx1, int idx2) 
    {
        m_container[idx1].merge(m_container[idx2]);
        m_container.erase(m_container.begin() + idx2);
    }

    int size() { return m_container.size(); }

};

class Kruskal : public MazeVisualsation
{
private:

    KruskalUnion kruskal_union;

    std::array<int, 2> getRandomPosition()
    {
        int width =  (m_map[0].size()-1) / 2;
        int height = (m_map.size()-1) / 2;

        int x = (rand() % (width + 1)) * 2;
        int y = (rand() % (height + 1)) * 2;

        return {x, y};
    }

public:

    Kruskal(int width, int height)
    {
        init(width, height);
        kruskal_union = KruskalUnion(width, height);
    }

    void step() override
    {
        if(kruskal_union.size() > 1)
        {
            auto pos1 = getRandomPosition();
            auto f1 = find_frontiers(pos1, WALL);
            auto f2 = find_frontiers(pos1, PASSAGE);
            f1.insert(f1.end(), f2.begin(), f2.end());

            auto pos2 = f1[rand_range(0, f1.size())];

            int k1 = kruskal_union.find(pos1);
            int k2 = kruskal_union.find(pos2);

            if(k1 != k2)
            {
                kruskal_union.join(k1, k2);
                m_map[pos1[1]][pos1[0]] = PASSAGE;
                m_map[pos2[1]][pos2[0]] = PASSAGE;
                connect_nodes(pos1, pos2);
            }
        }
    }

    std::vector<std::vector<int>> generate_maze(size_t width, size_t height) override 
    {
        init(width, height);
		while(kruskal_union.size() > 1)
			step();
		return m_map;
    }
};



