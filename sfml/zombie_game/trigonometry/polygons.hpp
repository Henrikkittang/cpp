#pragma once
#include<iostream>
#include<cmath>
#include<vector>

#include "point2.hpp"
#include "vector2.hpp"

struct Polygon2
{
protected:

	void update_bounds()
	{
		double x_maks = -INFINITY;
		double y_maks = -INFINITY;
		double x_min = INFINITY;
		double y_min = INFINITY;
		for(const auto& p : m_points)
		{
			if(p.x > x_maks) x_maks = p.x;
			if(p.x < x_min) x_min = p.x;
			if(p.y > y_maks) y_maks = p.y;
			if(p.y < y_min) y_min = p.y;
		}
		m_bounds[0] = Point2(x_min, y_min);
		m_bounds[1] =  Point2(x_maks, y_maks);
		m_origin = m_bounds[0];
	}

protected:
	std::vector<Point2> m_points;
	Point2 m_bounds[2];
	Point2 m_origin;

public:

	virtual double area() const
	{
		double area = 0.0;

		int j = m_points.size() - 1;
		for (int i = 0; i < m_points.size(); i++)
		{
			area += ( m_points[j].x + m_points[i].x ) * ( m_points[j].y * m_points[i].y );
			j = i;
		}

		// Return absolute value
		return abs(area / 2.0);
	}


	virtual Point2 center() const
	{
		Point2 centroid;
		double signedArea = 0.0;

		// For all vertices
		for (size_t i =0; i< m_points.size(); ++i)
		{
			Point2 p1 = m_points[i];
			size_t idx2 = i+1;
			if(idx2 > m_points.size()) idx2 = 0;
			Point2 p2 = m_points[idx2];

			double a = p1.x*p2.y - p2.x*p1.y;
			signedArea += a;
			centroid.x += (p1.x + p2.x)*a;
			centroid.y += (p1.y + p2.y)*a;
		}

		signedArea *= 0.5;
		centroid.x /= (6.0*signedArea);
		centroid.y /= (6.0*signedArea);

		return centroid;
	}

	const Point2& get(const int index) const{return m_points[index];}
	const Point2& operator[](const int index) const{return m_points[index];}
	const Point2& bounds(const int index) const{return m_bounds[index];}
	int point_count() const{return m_points.size();}

	void rotateR(const double radians)
	{
		// update_bounds();
		std::vector<Vector2> vects;
		Point2 origin = m_bounds[0];

		for(auto& p : m_points)
		{
			Vector2 vect = make_vector2(origin, p);
			vect.rotateR(radians);
			p = Point2( vect.x + origin.x, vect.y + origin.y );
		}
	}

	void rotateD(const double degrees)
	{
		rotateR( degrees * (180/PI) );
	}

	void move(const double xoff, const double yoff)
    {
		update_bounds();
		for(auto& p : m_points)
		{
			p.move(xoff, yoff);
		}
    }

	virtual bool pointInsideSelf(const Point2& p) const
	{
		double isInside = false;
		double minX = m_points[0].x, maxX = m_points[0].x;
		double minY = m_points[0].y, maxY = m_points[0].y;
		for (auto& q : m_points) {
			minX = std::min<double>(q.x, minX);
			maxX = std::max<double>(q.x, maxX);
			minY = std::min<double>(q.y, minY);
			maxY = std::max<double>(q.y, maxY);
		}

		if (p.x < minX || p.x > maxX || p.y < minY || p.y > maxY)
		{
			return false;
		}

		for (int i = 0, j = m_points.size()-1; i < m_points.size(); j = i++) {
			if ( (m_points[i].y > p.y) != (m_points[j].y > p.y) &&
					p.x < (m_points[j].x - m_points[i].x) * (p.y - m_points[i].y) / (m_points[j].y - m_points[i].y) + m_points[i].x ) {
				isInside = !isInside;
			}
		}

		return isInside;
	}
};


struct Triangle2 : public Polygon2
{

    Triangle2(const Point2 a_p1, const Point2 a_p2, const Point2 a_p3)
    {
		m_points = {a_p1, a_p2, a_p3};

		update_bounds();
	}

	Point2 center() const override
	{
		return Point2( (m_points[0].x+m_points[1].x+m_points[2].x)/3,(m_points[0].y+m_points[1].y+m_points[2].y)/3  );
	}

	double area() const override
    {
        return abs(m_points[0].x*(m_points[1].y - m_points[2].y) + m_points[1].x*(m_points[2].y - m_points[0].y) + m_points[2].x*(m_points[0].y - m_points[1].y)) / 2;
    }

    bool pointInsideCircumCircle(const Point2& a_point) {
        double ax_ = m_points[0].x-a_point.x;
        double ay_ = m_points[0].y-a_point.y;
        double bx_ = m_points[1].x-a_point.x;
        double by_ = m_points[1].y-a_point.y;
        double cx_ = m_points[2].x-a_point.x;
        double cy_ = m_points[2].y-a_point.y;
        return (
            (ax_*ax_ + ay_*ay_) * (bx_*cy_-cx_*by_) -
            (bx_*bx_ + by_*by_) * (ax_*cy_-cx_*ay_) +
            (cx_*cx_ + cy_*cy_) * (ax_*by_-bx_*ay_)
        ) > 0;
    }
};

/*-------------------------------------*/

struct Rectangle2 : public Polygon2
{
private:
	Point2 m_position;
	double m_widht, m_height;

public:
	Rectangle2(const Point2& corner, const double xoff, const double yoff)
		:m_position(corner), m_widht(xoff), m_height(yoff)
	{
		m_points = {
			corner,
			Point2(corner.x+xoff, corner.y ),
			Point2(corner.x+xoff, corner.y+yoff ),
			Point2(corner.x, corner.y+yoff ),
		};

		update_bounds();
	}

	const Point2& m_position() const{ return m_position; }
	double width() const { return m_widht; }
	double height() const { return m_height; }

	Point2 center() const override
	{
		return Point2( m_position.x + (m_widht/2), m_position.y + (m_height/2) );
	}

	double area() const override
	{
		return m_widht*m_height;
	}

	bool pointInsideSelf(const Point2& p) const override
	{
		if( p.x > m_position.x && p.x < (m_position.x + m_widht) )
		{
			if( p.y > m_position.y && p.y < (m_position.y + m_height) ){
				return true;
			}else{
				return false;
			}
		}
	}
};


