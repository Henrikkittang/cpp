#pragma once
#include <vector>
#include <array>

#include<SFML/Graphics.hpp>

#include "world.hpp"
#include "grid.hpp"
#include "../entity/entity.hpp"
#include "../entity/player.hpp"

#define TileSize 48
#define ChunkSize 16


class Chunk
{
private:    
    Grid<int, ChunkSize, ChunkSize> m_collision_map;
    std::vector<Entity> m_entities;

private:

    void load_entities()
    {

    }

    void update_collision_map()
    {
        for(const auto& enity : m_entities)
        {
            int pos[2] = { entity.getPos().x / TileSize, entity.getPos().y / TileSize };
            int size[2] = { entity.getWidth() / TileSize, entity.getHeight() / TileSize };
            
            for(int i = 0; i < size[0]; i++)
                m_collision_map.index(pos[0] + i * TileSize, pos[1]) = 1;
            for(int i = 0; i < size[1]; i++)
                m_collision_map.index(pos[0], pos[1] + i * TileSize) = 1;
        }
    }

public:
    Chunk()
    {
        load_entities();
        update_collision_map();
    }


    const Grid<int, ChunkSize, ChunkSize>& get_collision_map() const
    {
        return m_collision_map;
    }

};

class WorldMap
{
private:
    // Consts
    const int m_chunk_size = ChunkSize;
    const int m_tile_size = TileSize;

    // Variables
    std::vector<Chunk> m_chunks;

public:

    WorldMap() 
    {
        
    }

    int get_chunk_size() const { return m_chunk_size; }
    int get_tile_size() const { return m_tile_size; }

};







