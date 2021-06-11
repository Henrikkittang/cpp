#pragma once

#include<SFML/Graphics.hpp>

class World
{
private:

    sf::RenderWindow m_window;

  

    void load_world()
    {

    }



public:

    World(int sreen_width=1024, int scree_height=768, const sf::ContextSettings& settings=sf::ContextSettings())
          : m_window(sf::VideoMode(sreen_width, scree_height), "Game tester", sf::Style::Close | sf::Style::Titlebar, settings)
    {}

   void update()
    {
        while(m_window.isOpen()){
            sf::Event evt;
            while(m_window.pollEvent(evt)){
                if(evt.type == evt.Closed){
                    m_window.close();
                }
            }
            m_window.clear();

           
            m_window.display();
        }
    }

};
