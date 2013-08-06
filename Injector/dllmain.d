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
	HWND FindWindowA(LPCSTR lpClassName, LPCSTR lpWindowName);
	DWORD GetWindowThreadProcessId(HWND hWnd, LPDWORD lpdwProcessId);
	HANDLE OpenProcess(DWORD dwDesiredAccess, BOOL bInheritHandle, DWORD dwProcessId);
	BOOL ReadProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesRead);
	BOOL Thread32First(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL Thread32Next(HANDLE hSnapshot, LPTHREADENTRY32 lpte);
	BOOL WriteProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPCVOID lpBuffer, SIZE_T nSize, SIZE_T* lpNumberOfBytesWritten);

	immutable void* NULL = cast(void*)0;
	enum
	{
		TH32CS_SNAPTHREAD = 0x00000004,
	}
	enum
	{
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
	extern(C) void MainThreadThunk()
	{
		asm
		{
			naked;
			push ECX;
			push EDX;

			push EAX;
			call LoadLibraryA;

			pop EDX;
			pop ECX;
			pop EAX;
			ret; // This pops a return value off the stack, which we've already set to the previous eip.
		}
	}

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
		threadContext.Esp -= 4;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eip, threadContext.Eip.sizeof, cast(SIZE_T*)NULL);
		//*cast(uint*)threadContext.Esp = threadContext.Eip;
		threadContext.Esp -= 4;
		WriteProcessMemory(mainProcessHandle, cast(LPCVOID)threadContext.Esp, &threadContext.Eax, threadContext.Eax.sizeof, cast(SIZE_T*)NULL);
		//*cast(uint*)threadContext.Esp = threadContext.Eax;
		threadContext.Eip = cast(uint)&MainThreadThunk;
		threadContext.Eax = cast(uint)`C:\Tribes\TribesAscendSDK\TribesAscendSDK\bin\Debug\TribesAscendSDK.dll`.ptr;
		SetThreadContext(mainThreadHandle, &threadContext);
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
		HANDLE hProcess = OpenProcess(PROCESS_VM_READ | PROCESS_VM_WRITE, FALSE, procID);
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