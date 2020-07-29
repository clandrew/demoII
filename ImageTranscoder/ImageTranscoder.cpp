// ImageTranscoder.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"

using namespace Microsoft::WRL;

void VerifyHR(HRESULT hr)
{
	if (FAILED(hr))
	{
		__debugbreak();
	}
}

int main()
{
    std::wstring filename = L"test.png";
	ComPtr<IWICImagingFactory> m_wicImagingFactory;

	VerifyHR(CoInitialize(nullptr));

	VerifyHR(CoCreateInstance(
		CLSID_WICImagingFactory,
		NULL,
		CLSCTX_INPROC_SERVER,
		IID_IWICImagingFactory,
		(LPVOID*)&m_wicImagingFactory));

	ComPtr<IWICBitmapDecoder> decoder;
	VerifyHR(m_wicImagingFactory->CreateDecoderFromFilename(
		filename.c_str(),
		NULL,
		GENERIC_READ,
		WICDecodeMetadataCacheOnLoad, &decoder));

	ComPtr<IWICBitmapFrameDecode> spSource;
	VerifyHR(decoder->GetFrame(0, &spSource));

	ComPtr<IWICFormatConverter> spConverter;
	VerifyHR(m_wicImagingFactory->CreateFormatConverter(&spConverter));

	VerifyHR(spConverter->Initialize(
		spSource.Get(),
		GUID_WICPixelFormat32bppPBGRA,
		WICBitmapDitherTypeNone,
		NULL,
		0.f,
		WICBitmapPaletteTypeMedianCut));

	UINT width, height;
	VerifyHR(spConverter->GetSize(&width, &height));

	assert(width == 40 && height == 48);

	std::vector<UINT> buffer;

	buffer.resize(width * height);
	VerifyHR(spConverter->CopyPixels(
		NULL,
		width * sizeof(UINT),
		static_cast<UINT>(buffer.size()) * sizeof(UINT),
		reinterpret_cast<BYTE*>(buffer.data())));

	std::vector<byte> result;
	result.resize(960);

	// Zero out
	for (int i = 0; i < 128; ++i)
	{
		result[i] = 0;
	}

	struct LowresColor
	{
		UINT Rgb;
		byte EvenMask;
		byte OddMask;
	} lowresColors[16]
	{
		{0xff000000, 0x00, 0x00}, // Black
		{0xff99035f, 0x01, 0x10}, // Red
		{0xff4204e1, 0x02, 0x20}, // Dark blue
		{0xffca13fe, 0x03, 0x30}, // Parple
		{0xff007310, 0x04, 0x40}, // Dark green
		{0xff7f7f7f, 0x05, 0x50}, // Grey1
		{0xff2497ff, 0x06, 0x60}, // Medium blue
		{0xffaaa2ff, 0x07, 0x70}, // Light blue
		{0xff4f5101, 0x08, 0x80}, // Brown
		{0xfff05c00, 0x09, 0x90}, // Orange
		{0xffbebebe, 0x0A, 0xA0}, // Grey2
		{0xffff85e1, 0x0B, 0xB0}, // Pank
		{0xff12ca07, 0x0C, 0xC0}, // Light green
		{0xffced413, 0x0D, 0xD0}, // Yellow
		{0xff51f595, 0x0E, 0xE0}, // Aqua
		{0xfffffffe, 0x0F, 0xF0}, // White
	};

	// Top row
	for (int y = 0; y < 48; ++y)
	{
		for (int x = 0; x < 40; ++x)
		{
			UINT srcRgb = buffer[(y * 40) + x];

			LowresColor const* lowresColor = nullptr;
			for (int i = 0; i < 16; ++i)
			{
				if (lowresColors[i].Rgb == srcRgb)
				{
					lowresColor = &(lowresColors[i]);
					break;
				}
			}

			assert(lowresColor);

			int rowPairIndex = y / 2;
			int resultIndex = (rowPairIndex * 40) + x;

			if (y % 2 == 0)
			{
				result[resultIndex] |= lowresColor->EvenMask;
			}
			else
			{
				result[resultIndex] |= lowresColor->OddMask;
			}
		}
	}

	// Output the result as hex directives. Hex pseudo-op is limited to 64 characters, or 32 bytes; need to pick lineLength <= 32
	int lineLength = 16;
	assert(result.size() % lineLength == 0);
	for (int i = 0; i < result.size(); i += lineLength)
	{
		std::cout << " HEX ";

		for (int j = 0; j < lineLength; ++j)
		{
			std::cout << std::setfill('0') << std::uppercase << std::setw(2) << std::right << std::hex << (int)(result[i + j]) << "";
		}
		std::cout << "\n";
	}

}
