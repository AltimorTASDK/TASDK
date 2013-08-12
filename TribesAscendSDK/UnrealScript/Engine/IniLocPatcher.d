module UnrealScript.Engine.IniLocPatcher;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface IniLocPatcher : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.IniLocPatcher")); }
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
			ScriptFunction OnReadTitleFileComplete() { return mOnReadTitleFileComplete ? mOnReadTitleFileComplete : (mOnReadTitleFileComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.OnReadTitleFileComplete")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.Init")); }
			ScriptFunction DownloadFiles() { return mDownloadFiles ? mDownloadFiles : (mDownloadFiles = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.DownloadFiles")); }
			ScriptFunction OnReadFileComplete() { return mOnReadFileComplete ? mOnReadFileComplete : (mOnReadFileComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.OnReadFileComplete")); }
			ScriptFunction ProcessIniLocFile() { return mProcessIniLocFile ? mProcessIniLocFile : (mProcessIniLocFile = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.ProcessIniLocFile")); }
			ScriptFunction AddFileToDownload() { return mAddFileToDownload ? mAddFileToDownload : (mAddFileToDownload = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.AddFileToDownload")); }
			ScriptFunction AddReadFileDelegate() { return mAddReadFileDelegate ? mAddReadFileDelegate : (mAddReadFileDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.AddReadFileDelegate")); }
			ScriptFunction ClearReadFileDelegate() { return mClearReadFileDelegate ? mClearReadFileDelegate : (mClearReadFileDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.ClearReadFileDelegate")); }
			ScriptFunction ClearCachedFiles() { return mClearCachedFiles ? mClearCachedFiles : (mClearCachedFiles = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.ClearCachedFiles")); }
			ScriptFunction UpdateLocFileName() { return mUpdateLocFileName ? mUpdateLocFileName : (mUpdateLocFileName = ScriptObject.Find!(ScriptFunction)("Function Engine.IniLocPatcher.UpdateLocFileName")); }
		}
	}
	struct IniLocFileEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.IniLocPatcher.IniLocFileEntry")); }
		@property final auto ref
		{
			OnlineSubsystem.EOnlineEnumerationReadState ReadState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
			ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(IniLocPatcher.IniLocFileEntry) Files() { return *cast(ScriptArray!(IniLocPatcher.IniLocFileEntry)*)(cast(size_t)cast(void*)this + 60); }
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
	void ProcessIniLocFile(ScriptString Filename, ScriptArray!(ubyte)* FileData)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileData;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessIniLocFile, params.ptr, cast(void*)0);
		*FileData = *cast(ScriptArray!(ubyte)*)&params[12];
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
