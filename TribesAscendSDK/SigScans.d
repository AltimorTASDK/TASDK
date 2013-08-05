module SigScans;

private import core.sys.windows.windows;
private import Win32API;

immutable ubyte[] kSigObjects = [0xA1, 0x00, 0x00, 0x00, 0x00, 0x83, 0x3C, 0xB0, 0x00];
immutable string kMaskObjects = "x????xxxx";

immutable ubyte[] kSigNames = [0x8B, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x89, 0x04, 0xB1];
immutable string kMaskNames = "xx????xxx";

immutable ubyte[] kSigNatives = [0x89, 0x14, 0x85, 0x00, 0x00, 0x00, 0x00, 0x32, 0xC0, 0xC3];
immutable string kMaskNatives = "xxx????xxx";

immutable ubyte[] kSigCleanupStack = [0x55, 0x8B, 0xEC, 0x51, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x33, 0xC5, 0x89, 0x45, 0xFC, 0x53, 0x56, 0x57];
immutable string kMaskCleanupStack = "xxxxx????xxxxxxxx";

immutable ubyte[] kSigCallFunction = [0x55, 0x8D, 0xAC, 0x24, 0x00, 0x00, 0x00, 0x00, 0x81, 0xEC, 0x00, 0x00, 0x00, 0x00, 0x6A, 0xFF, 0x68, 0x00, 0x00, 0x00, 0x00, 0x64, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x50, 0x83, 0xEC, 0x40];
immutable string kMaskCallFunction = "xxxx????xx????xxx????xx????xxxx";

public MODULEINFO GetModuleInfo(const char* moduleName)
{
	MODULEINFO info = { null };
	HMODULE mod = GetModuleHandleA(moduleName);
	
	if(mod)
		GetModuleInformation(GetCurrentProcess(), mod, &info, MODULEINFO.sizeof);
	
	return info;
}

public size_t FindPattern(void* start_address, size_t file_size, immutable ubyte[] pattern, immutable string mask)
{
	size_t pos = 0;
	int search_len = mask.length - 1;
	
	for(size_t ret_address = cast(size_t)start_address; ret_address < cast(size_t)start_address + file_size; ret_address++)
	{
		if(*cast(ubyte*)ret_address == pattern[pos] || mask[pos] == '?')
		{
			if(pos + 1 < mask.length)
			{
				return ret_address - search_len;
			}
			
			pos++;
		} 
		else
		{
			pos = 0;
		}		
	}
	
	return 0;
}