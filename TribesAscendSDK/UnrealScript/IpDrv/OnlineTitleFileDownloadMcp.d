module UnrealScript.IpDrv.OnlineTitleFileDownloadMcp;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineTitleFileDownloadMcp : MCPBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.OnlineTitleFileDownloadMcp")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReadTitleFileComplete;
			ScriptFunction mReadTitleFile;
			ScriptFunction mAddReadTitleFileCompleteDelegate;
			ScriptFunction mClearReadTitleFileCompleteDelegate;
			ScriptFunction mGetTitleFileContents;
			ScriptFunction mGetTitleFileState;
			ScriptFunction mClearDownloadedFiles;
			ScriptFunction mClearDownloadedFile;
		}
		public @property static final
		{
			ScriptFunction OnReadTitleFileComplete() { return mOnReadTitleFileComplete ? mOnReadTitleFileComplete : (mOnReadTitleFileComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.OnReadTitleFileComplete")); }
			ScriptFunction ReadTitleFile() { return mReadTitleFile ? mReadTitleFile : (mReadTitleFile = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.ReadTitleFile")); }
			ScriptFunction AddReadTitleFileCompleteDelegate() { return mAddReadTitleFileCompleteDelegate ? mAddReadTitleFileCompleteDelegate : (mAddReadTitleFileCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.AddReadTitleFileCompleteDelegate")); }
			ScriptFunction ClearReadTitleFileCompleteDelegate() { return mClearReadTitleFileCompleteDelegate ? mClearReadTitleFileCompleteDelegate : (mClearReadTitleFileCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.ClearReadTitleFileCompleteDelegate")); }
			ScriptFunction GetTitleFileContents() { return mGetTitleFileContents ? mGetTitleFileContents : (mGetTitleFileContents = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.GetTitleFileContents")); }
			ScriptFunction GetTitleFileState() { return mGetTitleFileState ? mGetTitleFileState : (mGetTitleFileState = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.GetTitleFileState")); }
			ScriptFunction ClearDownloadedFiles() { return mClearDownloadedFiles ? mClearDownloadedFiles : (mClearDownloadedFiles = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.ClearDownloadedFiles")); }
			ScriptFunction ClearDownloadedFile() { return mClearDownloadedFile ? mClearDownloadedFile : (mClearDownloadedFile = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineTitleFileDownloadMcp.ClearDownloadedFile")); }
		}
	}
	struct TitleFileMcp
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlineTitleFileDownloadMcp.TitleFileMcp")); }
		@property final auto ref
		{
			ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
			ScriptArray!(ubyte) Data() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 16); }
		}
		@property final auto ref UObject.Pointer HttpDownloader() { return *cast(UObject.Pointer*)(cast(size_t)&this + 28); }
	}
	struct FileNameToURLMapping
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlineTitleFileDownloadMcp.FileNameToURLMapping")); }
		@property final auto ref
		{
			ScriptName UrlMapping() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName Filename() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ReadTitleFileCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 64); }
		ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp) TitleFiles() { return *cast(ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp)*)(cast(size_t)cast(void*)this + 76); }
		ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping) FilesToUrls() { return *cast(ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping)*)(cast(size_t)cast(void*)this + 108); }
		float TimeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		ScriptString BaseUrl() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
		int DownloadCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
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
	bool ReadTitleFile(ScriptString FileToRead)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FileToRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadTitleFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadTitleFileCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadTitleFileCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool GetTitleFileContents(ScriptString Filename, ScriptArray!(ubyte)* FileContents)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileContents;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleFileContents, params.ptr, cast(void*)0);
		*FileContents = *cast(ScriptArray!(ubyte)*)&params[12];
		return *cast(bool*)&params[24];
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetTitleFileState(ScriptString Filename)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleFileState, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[12];
	}
	bool ClearDownloadedFiles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDownloadedFiles, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ClearDownloadedFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDownloadedFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
