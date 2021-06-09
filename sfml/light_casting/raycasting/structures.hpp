#pragma once
#include<memory>

#include "vector2.hpp"

struct Edge
{
	math::Vector2 start;
	math::Vector2 end;

    Edge(int sx, int sy, int ex, int ey)
        : start(sx, sy), end(ex, ey) {}
};

struct Cell
{
	bool exists = false;
    std::array<bool, 4> edges_exists = {false, false, false, false};
	std::array<std::shared_ptr<Edge>, 4> edges_pointer{};
};


