module dllmain;

private import core.sys.windows.windows;
private import core.sys.windows.dll;

extern(Windows)
{
	BOOL ReadProcessMemory(HANDLE hProcess, LPCVOID lpBaseAddress, LPVOID lpBuffer, SIZE_T nSize, SIZE_T *lpNumberOfBytesRead);
	immutable void* NULL = cast(void*)0;
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
			//push EAX;
			push ECX;
			push EDX;

			push EAX;
			call LoadLibraryA;
			
			pop EAX;
			pop EDX;
			pop ECX;
			ret; // This pops a return value off the stack, which we've already set to the previous eip.
		}
	}

	export BOOL DllMain(HINSTANCE hInstance, ULONG ulReason, LPVOID pvReserved)
	{
		switch (ulReason)
		{
			case DLL_PROCESS_ATTACH:
				HANDLE mainThreadHandle = GetMainThreadHandle();
				SuspendThread(mainThreadHandle);
				CONTEXT threadContext = { NULL };
				threadContext.ContextFlags = CONTEXT_CONTROL | CONTEXT_INTEGER;
				GetThreadContext(mainThreadHandle, &threadContext);
				*cast(uint*)threadContext.Esp = threadContext.Eip;
				threadContext.Esp -= 4;
				*cast(uint*)threadContext.Esp = threadContext.Eax;
				threadContext.Esp -= 4;
				threadContext.Eip = cast(uint)&MainThreadThunk;
				threadContext.Eax = cast(uint)`C:\Tribes\TribesAscendSDK\TribesAscendSDK\bin\Debug\TribesAscendSDK.dll`.ptr;
				SetThreadContext(mainThreadHandle, &threadContext);
				ResumeThread(mainThreadHandle);
				CloseHandle(mainThreadHandle);
				return true;
			default:
				return false;
		}
	}

	export HANDLE GetMainThreadHandle()
	{
		LPCVOID lpBaseAddress;
		asm
		{
			mov EAX, FS:[0x18];
			add EAX, 36;
			mov [lpBaseAddress], EAX;
		}
		
		DWORD threadID;
		if(ReadProcessMemory(GetCurrentProcess(), lpBaseAddress, &threadID, threadID.sizeof, cast(uint*)NULL) == FALSE)
			return NULL;

		return OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT, FALSE, threadID);
	}
}