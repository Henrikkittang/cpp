#include<cmath>
#include<random>

float calculateInfluence(int xGrid, int yGrid, float x, float y)
{
	std::mt19937 rdEngine(1);
	std::normal_distribution<float> dist(0.0f, 1.0f);
    // Calculate gradient vector
    float gradientXComponent = dist(rdEngine);
    float gradientYComponent = dist(rdEngine);

    // Normalize gradient vector
    float magnitude = sqrt( pow(gradientXComponent, 2) + pow(gradientYComponent, 2) );
    gradientXComponent = gradientXComponent / magnitude;
    gradientYComponent = gradientYComponent / magnitude;
    magnitude = sqrt(pow(gradientXComponent, 2) + pow(gradientYComponent, 2));

    // Calculate distance vectors
    float dx = x - (float)xGrid;
    float dy = y - (float)yGrid;

    // Compute dot product
    return (dx * gradientXComponent + dy * gradientYComponent);
}

float lerp(float v0, float v1, float t)
{
    return ( 1.0f - t ) * v0 + t * v1;
}

float perlinNoise2D(float x, float y)
{
    // Find grid cell coordinates
    int x0 = (x > 0.0f ? static_cast<int>(x) : (static_cast<int>(x) - 1));
    int x1 = x0 + 1;
    int y0 = (y > 0.0f ? static_cast<int>(y) : (static_cast<int>(y) - 1));
    int y1 = y0 + 1;

    float s = calculateInfluence(x0, y0, x, y);
    float t = calculateInfluence(x1, y0, x, y);
    float u = calculateInfluence(x0, y1, x, y);
    float v = calculateInfluence(x1, y1, x, y);

    // Local position in the grid cell
    float localPosX = 3 * ((x - (float)x0) * (x - (float)x0)) - 2 * ((x - (float)x0) * (x - (float)x0) * (x - (float)x0));
    float localPosY = 3 * ((y - (float)y0) * (y - (float)y0)) - 2 * ((y - (float)y0) * (y - (float)y0) * (y - (float)y0));

    float a = s + localPosX * (t - s);
    float b = u + localPosX * (v - u);

    return lerp(a, b, localPosY);
}

float multiOctavePerlinNoise2D(float x, float y, int octaves)
{
    float v = 0.0f;
    float scale = 1.0f;
    float weight = 1.0f;
    float weightTotal = 0.0f;
    for(int i = 0; i < octaves; i++)
    {
        v += perlinNoise2D(x * scale, y * scale) * weight;
        weightTotal += weight;
        // "ever-increasing frequencies and ever-decreasing amplitudes"
        // (or conversely decreasing freqs and increasing amplitudes)
        scale *= 0.5f;
        weight *= 2.0f;
    }
    return v / weightTotal;
}


