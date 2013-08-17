module UnrealScript.Engine.IniLocPatcher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface IniLocPatcher : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.IniLocPatcher")); }
	private static __gshared IniLocPatcher mDefaultProperties;
	@property final static IniLocPatcher DefaultProperties() { mixin(MGDPC("IniLocPatcher", "IniLocPatcher Engine.Default__IniLocPatcher")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReadTitleFileComplete;
			ScriptFunction mInit;
			ScriptFunction mDownloadFiles;
			ScriptFunction mOnReadFileComplete;
			ScriptFunction mProcessIniLocFile;
			ScriptFunction mAddFileToDownload;
			ScriptFunction mAddReadFileDelegate;
			ScriptFunction mClearReadFileDelegate;
			ScriptFunction mClearCachedFiles;
			ScriptFunction mUpdateLocFileName;
		}
		public @property static final
		{
			ScriptFunction OnReadTitleFileComplete() { mixin(MGF("mOnReadTitleFileComplete", "Function Engine.IniLocPatcher.OnReadTitleFileComplete")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.IniLocPatcher.Init")); }
			ScriptFunction DownloadFiles() { mixin(MGF("mDownloadFiles", "Function Engine.IniLocPatcher.DownloadFiles")); }
			ScriptFunction OnReadFileComplete() { mixin(MGF("mOnReadFileComplete", "Function Engine.IniLocPatcher.OnReadFileComplete")); }
			ScriptFunction ProcessIniLocFile() { mixin(MGF("mProcessIniLocFile", "Function Engine.IniLocPatcher.ProcessIniLocFile")); }
			ScriptFunction AddFileToDownload() { mixin(MGF("mAddFileToDownload", "Function Engine.IniLocPatcher.AddFileToDownload")); }
			ScriptFunction AddReadFileDelegate() { mixin(MGF("mAddReadFileDelegate", "Function Engine.IniLocPatcher.AddReadFileDelegate")); }
			ScriptFunction ClearReadFileDelegate() { mixin(MGF("mClearReadFileDelegate", "Function Engine.IniLocPatcher.ClearReadFileDelegate")); }
			ScriptFunction ClearCachedFiles() { mixin(MGF("mClearCachedFiles", "Function Engine.IniLocPatcher.ClearCachedFiles")); }
			ScriptFunction UpdateLocFileName() { mixin(MGF("mUpdateLocFileName", "Function Engine.IniLocPatcher.UpdateLocFileName")); }
		}
	}
	struct IniLocFileEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.IniLocPatcher.IniLocFileEntry")); }
		@property final auto ref
		{
			OnlineSubsystem.EOnlineEnumerationReadState ReadState() { mixin(MGPS("OnlineSubsystem.EOnlineEnumerationReadState", 12)); }
			ScriptString Filename() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(IniLocPatcher.IniLocFileEntry) Files() { mixin(MGPC("ScriptArray!(IniLocPatcher.IniLocFileEntry)", 60)); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadTitleFileComplete__Delegate'!
		// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'TitleFileInterface'!
	}
final:
	void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadTitleFileComplete, params.ptr, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void DownloadFiles()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DownloadFiles, cast(void*)0, cast(void*)0);
	}
	void OnReadFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadFileComplete, params.ptr, cast(void*)0);
	}
	void ProcessIniLocFile(ScriptString Filename, ref in ScriptArray!(ubyte) FileData)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = cast(ScriptArray!(ubyte))FileData;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessIniLocFile, params.ptr, cast(void*)0);
	}
	void AddFileToDownload(ScriptString Filename)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFileToDownload, params.ptr, cast(void*)0);
	}
	void AddReadFileDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadFileDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadFileDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadFileDelegate, params.ptr, cast(void*)0);
	}
	void ClearCachedFiles()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCachedFiles, cast(void*)0, cast(void*)0);
	}
	ScriptString UpdateLocFileName(ScriptString Filename)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocFileName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
