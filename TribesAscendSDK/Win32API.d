module Win32API;

private import core.sys.windows.windows;

public extern(Windows)
{
	public struct MODULEINFO
	{
	public:
		void* lpBaseOfDll;
		uint SizeOfImage;
		void* EntryPoint;
	}

	public alias MODULEINFO* LPMODULEINFO;
	// These 2 aren't correct, but they work for what we need.
	public alias LPVOID LPSECURITY_ATTRIBUTES;
	public alias LPVOID LPTHREAD_START_ROUTINE;
	public alias DWORD* LPDWORD;

	public const void* NULL = cast(void*)0;

	bool GetModuleInformation(HANDLE hProcess, HMODULE hModule, LPMODULEINFO lpmodinfo, uint cb);
	HANDLE CreateThread(LPSECURITY_ATTRIBUTES lpThreadAttributes, size_t dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, LPVOID lpParameter, DWORD dwCreationFlags, LPDWORD lpThreadId);
}