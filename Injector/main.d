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

	HANDLE CreateToolhelp32Snapshot(DWORD dwFlags, DWORD th32ProcessID);
	BOOL EnumProcessModulesEx(HANDLE hProcess, HMODULE* lphModule, DWORD cb, LPDWORD lpcbNeeded, DWORD dwFilterFlag);
	HWND FindWindowA(LPCSTR lpClassName, LPCSTR lpWindowName);
	DWORD GetModuleFileNameExA(HANDLE hProcess, HMODULE hModule, LPSTR lpFilename, DWORD nSize);
	DWORD GetWindowThreadProcessId(HWND hWnd, LPDWORD lpdwProcessId);
	HANDLE OpenProcess(DWORD dwDesiredAccess, BOOL bInheritHandle, DWORD dwProcessId);
	BOOL ReadProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesRead);
	BOOL Thread32First(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL Thread32Next(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL WriteProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPCVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesWritten);

	immutable void* NULL = cast(void*)0;
	enum
	{
		LIST_MODULES_32BIT = 0x01,
	}
	enum
	{
		TH32CS_SNAPTHREAD = 0x00000004,
	}
	enum
	{
		PROCESS_VM_OPERATION = 0x0008,
		PROCESS_VM_READ = 0x0010,
		PROCESS_VM_WRITE = 0x0020,
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
	
	//char* mSDKDll;
	export extern(C) void MainThreadThunk()
	{
		asm
		{
			naked;
			push ECX;
			push EDX;

			push EAX;
			call EBX;

			pop EDX;
			pop ECX;
			pop EBX;
			pop EAX;
			ret; // This pops a return value off the stack, which we've already set to the previous eip.
		}
	}
	immutable(immutable(ubyte)[0x0A]) ThunkData =
	[
		0x51, // push ECX
		0x52, // push EDX

		0x50, // push EAX
		0xFF, 0xD3, // call EBX

		0x5A, // pop EDX
		0x59, // pop ECX
		0x5B, // pop EBX
		0x58, // pop EAX
		0xC3, // ret
	];
	immutable string SDKLocation = `C:\Tribes\TribesAscendSDK\TribesAscendSDK\bin\Debug\TribesAscendSDK.dll`;

	void main()
	{
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
		GetThreadContext(mainThreadHandle, &threadContext);

		// Save the old stuff.
		threadContext.Esp -= 4;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eip, threadContext.Eip.sizeof, cast(SIZE_T*)NULL);
		threadContext.Esp -= 4;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eax, threadContext.Eax.sizeof, cast(SIZE_T*)NULL);
		threadContext.Esp -= 4;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Ebx, threadContext.Ebx.sizeof, cast(SIZE_T*)NULL);

		LPVOID thunkAddress = VirtualAllocEx(mainProcessHandle, NULL, ThunkData.length, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
		WriteProcessMemory(mainProcessHandle, thunkAddress, ThunkData.ptr, ThunkData.length, cast(SIZE_T*)NULL);
		threadContext.Eip = cast(uint)thunkAddress;

		HMODULE loadedModules[1024];
		DWORD cbNeeded;
		EnumProcessModulesEx(mainProcessHandle, loadedModules.ptr, loadedModules.sizeof, &cbNeeded, LIST_MODULES_32BIT);
		for (uint i = 0; i < cbNeeded / HMODULE.sizeof; i++)
		{
			CHAR moduleName[MAX_PATH];
			moduleName[] = '\0';
			GetModuleFileNameExA(mainProcessHandle, loadedModules[i], moduleName.ptr, moduleName.sizeof / CHAR.sizeof);
			printf("Process has loaded '%s'\n", moduleName);
			//if (!strcmp(moduleName, "Kernel32.dll"))
		}
		// TODO: Retrieve the correct address for LoadLibraryA in the running exe and set that as the value of ebx.

		LPVOID stringAddress = VirtualAllocEx(mainProcessHandle, NULL, SDKLocation.length + 1, MEM_COMMIT, PAGE_READWRITE);
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)stringAddress, SDKLocation.ptr, SDKLocation.length, cast(SIZE_T*)NULL);
		byte zero = 0;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)(stringAddress + SDKLocation.length), &zero, zero.sizeof, cast(SIZE_T*)NULL);
		threadContext.Eax = cast(uint)stringAddress;

		//SetThreadContext(mainThreadHandle, &threadContext);
		ResumeThread(mainThreadHandle);
	}

	HANDLE GetMainThreadHandle(HANDLE* processHandle)
	{
		HWND wHand = FindWindowA(cast(char*)NULL, "Tribes: Ascend (32-bit, DX9)");
		if (!wHand)
			MessageBoxA(NULL, "Failed to get window handle!", "Failed to get window handle!", MB_OK);
		DWORD procID;
		if (!GetWindowThreadProcessId(wHand, &procID))
			MessageBoxA(NULL, "Failed to get window thread process id!", "Failed to get window thread process id!", MB_OK);
		HANDLE hProcess = OpenProcess(PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION, FALSE, procID);
		if(!hProcess)
			MessageBoxA(NULL, "Failed to get process handle!", "Failed to get process handle!", MB_OK);
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
			MessageBoxA(NULL, "Failed to get thread handle!", "Failed to get thread handle!", MB_OK);

		*processHandle = hProcess;

		return OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT, FALSE, threadID);
	}
}