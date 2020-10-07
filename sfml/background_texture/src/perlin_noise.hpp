#include<vector>



std::vector<float>  PerlinNoise1D(int nCount, std::vector<float> fSeed, int nOctaves, float fBias)
{
	std::vector<float> m_output;
	m_output.reserve(nCount);
	// Used 1D Perlin Noise
	for (int x = 0; x < nCount; x++)
	{
		float fNoise = 0.0f;
		float fScaleAcc = 0.0f;
		float fScale = 1.0f;

		for (int o = 0; o < nOctaves; o++)
		{
			int nPitch = nCount >> o;
			int nSample1 = (x / nPitch) * nPitch;
			int nSample2 = (nSample1 + nPitch) % nCount;

			float fBlend = (float)(x - nSample1) / (float)nPitch;

			float fSample = (1.0f - fBlend) * fSeed[nSample1] + fBlend * fSeed[nSample2];

			fScaleAcc += fScale;
			fNoise += fSample * fScale;
			fScale = fScale / fBias;
		}

		// Scale to seed range
		m_output.push_back ( fNoise / fScaleAcc );
	}
	return m_output;
}
