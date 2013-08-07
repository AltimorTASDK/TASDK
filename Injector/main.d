module dllmain;

private import core.sys.windows.windows;
private import core.sys.windows.dll;
private import std.conv;
private import std.stdio;

extern(Windows)
{
	struct THREADENTRY32
	{
		DWORD dwSize;
		DWORD cntUsage;
		DWORD th32ThreadID;
		DWORD th32OwnerProcessID;
		LONG tpBasePri;
		LONG tpDeltaPri;
		DWORD dwFlags;
	}
	alias THREADENTRY32* PTHREADENTRY32;
	alias PTHREADENTRY32 LPTHREADENTRY32;
	struct TOKEN_PRIVILEGES
	{
		DWORD PrivilegeCount;
		LUID_AND_ATTRIBUTES Privileges[1];
	}
	alias TOKEN_PRIVILEGES* PTOKEN_PRIVILEGES;
	alias PTOKEN_PRIVILEGES LPTOKEN_PRIVILEGES;
	struct LUID_AND_ATTRIBUTES
	{
		LUID Luid;
		DWORD Attributes;
	}
	struct LUID
	{
		DWORD LowPart;
		LONG HighPart;
	}
	alias LUID* PLUID;
	alias PLUID LPLUID;

	BOOL AdjustTokenPrivileges(HANDLE TokenHandle, BOOL DisableAllPrivileges, PTOKEN_PRIVILEGES NewState, DWORD BufferLength, PTOKEN_PRIVILEGES PreviousState, PDWORD ReturnLength);
	HANDLE CreateToolhelp32Snapshot(DWORD dwFlags, DWORD th32ProcessID);
	BOOL EnumProcessModules(HANDLE hProcess, HMODULE* lphModule, DWORD cb, LPDWORD lpcbNeeded);
	HWND FindWindowA(LPCSTR lpClassName, LPCSTR lpWindowName);
	DWORD GetModuleFileNameExA(HANDLE hProcess, HMODULE hModule, LPSTR lpFilename, DWORD nSize);
	DWORD GetWindowThreadProcessId(HWND hWnd, LPDWORD lpdwProcessId);
	BOOL LookupPrivilegeValueA(LPCTSTR lpSystemName, LPCTSTR lpName, PLUID lpLuid);
	HANDLE OpenProcess(DWORD dwDesiredAccess, BOOL bInheritHandle, DWORD dwProcessId);
	BOOL OpenProcessToken(HANDLE ProcessHandle, DWORD DesiredAccess, PHANDLE TokenHandle);
	BOOL ReadProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesRead);
	BOOL Thread32First(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL Thread32Next(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL WriteProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPCVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesWritten);

	immutable void* NULL = cast(void*)0;
	enum SE_DEBUG_NAME = "SeDebugPrivilege";
	enum SE_PRIVILEGE_ENABLE = 0x0002;
	enum TOKEN_ADJUST_PRIVILEGES = 0x0020;
	enum LIST_MODULES_32BIT = 0x01;
	enum TH32CS_SNAPTHREAD = 0x00000004;
	enum
	{
		PROCESS_VM_OPERATION = 0x0008,
		PROCESS_VM_READ = 0x0010,
		PROCESS_VM_WRITE = 0x0020,
		PROCESS_QUERY_INFORMATION = 0x04000,
	}
	enum
	{
		THREAD_TERMINATE = 0x0001,
		THREAD_SUSPEND_RESUME = 0x0002, // REQUIRED
		THREAD_GET_CONTEXT = 0x0008, // REQUIRED
		THREAD_SET_CONTEXT = 0x0010,
		THREAD_SET_INFORMATION = 0x0020,
		THREAD_QUERY_INFORMATION = 0x0040,
		THREAD_SET_THREAD_TOKEN = 0x0080,
		THREAD_IMPERSONATE = 0x0100,
		THREAD_DIRECT_IMPERSONATION = 0x0200,
	}
	export void TempMethod()
	{
		asm
		{
			naked;
			mov EAX, 0xFFFF;
			mov EDX, 0xFFFF;
			push 0xDEADBEEF;

			//pop 0xDEADBEEF;
		}
	}

	immutable(immutable(ubyte)[0x0E]) ThunkData =
	[
		0x55, // push EBP
		0x89, 0xE5, // mov EBP, ESP
		0x51, // push ECX
		0x52, // push EDX
		//0xB8, 0xFF, 0xFF, 0xFF, 0xFF, // mov EAX, 0xFFFFFFFF
		//0xBA, 0xFF, 0xFF, 0xFF, 0xFF, // mov EDX, 0xFFFFFFFF


		0x50, // push EAX
		0xFF, 0xD3, // call EBX

		0x5A, // pop EDX
		0x59, // pop ECX
		0x5D, // pop EBP
		0x5B, // pop EBX
		0x58, // pop EAX
		0xC3, // ret
	];
	immutable string SDKLocation = `C:\Tribes\TribesAscendSDK\TribesAscendSDK\bin\Debug\TribesAscendSDK.dll`;

	void Die(const char* message)
	{
		printf("Last error code: %i\n", GetLastError());
		MessageBoxA(NULL, message, message, MB_OK);
	}

	void AddTokenPrivilege(const char* privilegeName)
	{
		HANDLE processToken;
		if (!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES, &processToken))
			Die("Failed to aquire our process token!");
		scope(exit)
			CloseHandle(processToken);

		TOKEN_PRIVILEGES privileges;
		LUID luid;

		if (!LookupPrivilegeValueA(cast(char*)NULL, privilegeName, &luid))
			Die("Failed to lookup the luid of the debug privilege.");

		privileges.PrivilegeCount = 1;
		privileges.Privileges[0].Luid = luid;
		privileges.Privileges[0].Attributes = SE_PRIVILEGE_ENABLE;

		if (!AdjustTokenPrivileges(processToken, FALSE, &privileges, privileges.sizeof, cast(PTOKEN_PRIVILEGES)NULL, cast(PDWORD)NULL))
			Die("Failed to add the debug privilege!");
	}

	void main()
	{
		AddTokenPrivilege(SE_DEBUG_NAME);
		HANDLE mainProcessHandle;
		HANDLE mainThreadHandle = GetMainThreadHandle(&mainProcessHandle);
		scope(exit)
		{
			CloseHandle(mainProcessHandle);
			CloseHandle(mainThreadHandle);
		}
		SuspendThread(mainThreadHandle);
		CONTEXT threadContext = { NULL };
		threadContext.ContextFlags = CONTEXT_CONTROL | CONTEXT_INTEGER;
		if (!GetThreadContext(mainThreadHandle, &threadContext))
			Die("Failed to get the thread context!");

		// Save the old stuff.
		threadContext.Esp -= 4;
		if (!WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eip, threadContext.Eip.sizeof, cast(SIZE_T*)NULL))
			Die("Failed to write the old eip to the stack!");
		threadContext.Esp -= 4;
		if (!WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eax, threadContext.Eax.sizeof, cast(SIZE_T*)NULL))
			Die("Failed to write the old eax to the stack!");
		threadContext.Esp -= 4;
		if (!WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Ebx, threadContext.Ebx.sizeof, cast(SIZE_T*)NULL))
			Die("Failed to write the old ebx to the stack!");

		LPVOID thunkAddress = VirtualAllocEx(mainProcessHandle, NULL, ThunkData.length, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
		if (!WriteProcessMemory(mainProcessHandle, thunkAddress, ThunkData.ptr, ThunkData.length, cast(SIZE_T*)NULL))
			Die("Failed to write the thunk to memory!");
		threadContext.Eip = cast(uint)thunkAddress;


		HMODULE moduleHandle = GetModuleHandleA("KERNEL32.dll");
		if (!moduleHandle)
			Die("Failed to get a module handle for Kernel32!");
		FARPROC loadLib = GetProcAddress(moduleHandle, "LoadLibraryA");
		if (!loadLib)
			Die("Failed to get the address of LoadLibraryA in Kernel32!");
		threadContext.Ebx = cast(uint)loadLib;

		LPVOID stringAddress = VirtualAllocEx(mainProcessHandle, NULL, SDKLocation.length + 1, MEM_COMMIT, PAGE_READWRITE);
		if (!WriteProcessMemory(mainProcessHandle, cast(LPCVOID)stringAddress, SDKLocation.ptr, SDKLocation.length, cast(SIZE_T*)NULL))
			Die("Failed to write the main SDK location string to memory!");
		byte zero = 0;
		if (!WriteProcessMemory(mainProcessHandle, cast(LPCVOID)(stringAddress + SDKLocation.length), &zero, zero.sizeof, cast(SIZE_T*)NULL))
			Die("Failed to write the null terminator of the SDK location string to memory!");
		threadContext.Eax = cast(uint)stringAddress;

		if (!SetThreadContext(mainThreadHandle, &threadContext))
			Die("Failed to set the thread context!");
		if (!ResumeThread(mainThreadHandle))
			Die("Failed to resume the thread!");
	}

	HANDLE GetMainThreadHandle(HANDLE* processHandle)
	{
		HWND wHand = FindWindowA(cast(char*)NULL, "Tribes: Ascend (32-bit, DX9)");
		if (!wHand)
			Die("Failed to get window handle!");
		DWORD procID;
		if (!GetWindowThreadProcessId(wHand, &procID))
			Die("Failed to get window thread process id!");
		HANDLE hProcess = OpenProcess(PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION | PROCESS_QUERY_INFORMATION, FALSE, procID);
		if(!hProcess)
			Die("Failed to get process handle!");
		*processHandle = hProcess;

		DWORD threadID;
		THREADENTRY32 thEntry;
		thEntry.dwSize = THREADENTRY32.sizeof;
		BOOL threadValid;
		ulong minCreateTime = ulong.max;
		HANDLE threadSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);
		scope(exit)
			CloseHandle(threadSnapshot);
		for (threadValid = Thread32First(threadSnapshot, &thEntry); threadValid; threadValid = Thread32Next(threadSnapshot, &thEntry))
		{
			if (thEntry.th32OwnerProcessID == procID)
			{
				HANDLE thHandle = OpenThread(THREAD_QUERY_INFORMATION, TRUE, thEntry.th32ThreadID);
				scope(exit)
					CloseHandle(thHandle);
				FILETIME afTimes[3];
				FILETIME createTime = { NULL };
				GetThreadTimes(thHandle, &createTime, &afTimes[0], &afTimes[1], &afTimes[2]);
				ulong tm = *cast(ulong*)&createTime;
				if (tm < minCreateTime)
				{
					minCreateTime = tm;
					threadID = thEntry.th32ThreadID;
				}
			}
		}

		if (!threadID)
			Die("Failed to get thread handle!");

		*processHandle = hProcess;

		return OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT, FALSE, threadID);
	}
}