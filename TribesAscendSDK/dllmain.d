module dllmain;

private import core.sys.windows.windows;
private import core.sys.windows.dll;
private import IndentedStreamWriter;
private import ScriptClasses;
private import ScriptHooks;
private import SigScans;
private import Win32API;

__gshared HINSTANCE g_hInst = NULL;

extern(Windows) DWORD Init(LPVOID lpThreadParameter)
{
	while (!g_hInst) { }
	//InitLogging();
	
	MODULEINFO moduleInfo = GetModuleInfo("TribesAscend.exe");

	ScriptObject.ObjectArray = *cast(ScriptArray!(ScriptObject)**)(FindPattern(moduleInfo.lpBaseOfDll, moduleInfo.SizeOfImage, kSigObjects, kMaskObjects) + 1);
	ScriptName.NameArray = *cast(ScriptArray!(ScriptNameEntry*)**)(FindPattern(moduleInfo.lpBaseOfDll, moduleInfo.SizeOfImage, kSigNames, kMaskNames) + 2);

	ScriptHooks.NativeArray = *cast(NativeFunction**)(FindPattern(moduleInfo.lpBaseOfDll, moduleInfo.SizeOfImage, kSigNatives, kMaskNatives) + 3);
	ScriptHooks.CleanupStackPtr = cast(CleanupStack)FindPattern(moduleInfo.lpBaseOfDll, moduleInfo.SizeOfImage, kSigCleanupStack, kMaskCleanupStack);
	//OutputLog("CleanupStack: 0x%X\n", script_hooks::cleanup_stack);
	ScriptHooks.CallFunctionPtr = cast(CallFunction)FindPattern(moduleInfo.lpBaseOfDll, moduleInfo.SizeOfImage, kSigCallFunction, kMaskCallFunction);
	//OutputLog("CallFunction: 0x%X\n", script_hooks::call_function);
	
	/*for(int i = 0; i < 4096; i++)
	{
		if((uintptr_t)script_hooks::native_array[i] != 0x4A46E0)
			OutputLog("native 0x%X is 0x%X\n", i, script_hooks::native_array[i]);
	}*/
	
	//OutputLog("\n");

	IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDKTest.log");
	//scope(exit)
	//	wtr.Close();
	wtr.WriteLine("Hello %s!", "Orvid");
	wtr.Write("Wait,");
	wtr.WriteLine(" why are there %i %s's?!?!", 2, "Orvid");
	wtr.Close();

	//ModInit();
	return 0;
}

extern(Windows) BOOL DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID pvReserved)
{
	final switch (dwReason) 
	{
		case DLL_PROCESS_ATTACH:
			CreateThread(NULL, 0, &Init, NULL, 0, cast(DWORD*)NULL);
			dll_process_attach(hInstance, true);
			g_hInst = hInstance; 
			break; 
		case DLL_PROCESS_DETACH: 
			dll_process_detach(hInstance, true);
			break;
		case DLL_THREAD_ATTACH:
			dll_thread_attach(true, true);
			break;
		case DLL_THREAD_DETACH:
			dll_thread_detach(true, true);
			break;
	}
	return true;
}

