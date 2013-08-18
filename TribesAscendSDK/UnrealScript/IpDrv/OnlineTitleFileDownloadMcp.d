module UnrealScript.IpDrv.OnlineTitleFileDownloadMcp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineTitleFileDownloadMcp : MCPBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.OnlineTitleFileDownloadMcp")); }
	private static __gshared OnlineTitleFileDownloadMcp mDefaultProperties;
	@property final static OnlineTitleFileDownloadMcp DefaultProperties() { mixin(MGDPC("OnlineTitleFileDownloadMcp", "OnlineTitleFileDownloadMcp IpDrv.Default__OnlineTitleFileDownloadMcp")); }
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
			ScriptFunction OnReadTitleFileComplete() { mixin(MGF("mOnReadTitleFileComplete", "Function IpDrv.OnlineTitleFileDownloadMcp.OnReadTitleFileComplete")); }
			ScriptFunction ReadTitleFile() { mixin(MGF("mReadTitleFile", "Function IpDrv.OnlineTitleFileDownloadMcp.ReadTitleFile")); }
			ScriptFunction AddReadTitleFileCompleteDelegate() { mixin(MGF("mAddReadTitleFileCompleteDelegate", "Function IpDrv.OnlineTitleFileDownloadMcp.AddReadTitleFileCompleteDelegate")); }
			ScriptFunction ClearReadTitleFileCompleteDelegate() { mixin(MGF("mClearReadTitleFileCompleteDelegate", "Function IpDrv.OnlineTitleFileDownloadMcp.ClearReadTitleFileCompleteDelegate")); }
			ScriptFunction GetTitleFileContents() { mixin(MGF("mGetTitleFileContents", "Function IpDrv.OnlineTitleFileDownloadMcp.GetTitleFileContents")); }
			ScriptFunction GetTitleFileState() { mixin(MGF("mGetTitleFileState", "Function IpDrv.OnlineTitleFileDownloadMcp.GetTitleFileState")); }
			ScriptFunction ClearDownloadedFiles() { mixin(MGF("mClearDownloadedFiles", "Function IpDrv.OnlineTitleFileDownloadMcp.ClearDownloadedFiles")); }
			ScriptFunction ClearDownloadedFile() { mixin(MGF("mClearDownloadedFile", "Function IpDrv.OnlineTitleFileDownloadMcp.ClearDownloadedFile")); }
		}
	}
	struct TitleFileMcp
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.OnlineTitleFileDownloadMcp.TitleFileMcp")); }
		@property final auto ref
		{
			ScriptString Filename() { mixin(MGPS("ScriptString", 0)); }
			OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { mixin(MGPS("OnlineSubsystem.EOnlineEnumerationReadState", 12)); }
			ScriptArray!(ubyte) Data() { mixin(MGPS("ScriptArray!(ubyte)", 16)); }
		}
		@property final auto ref Pointer HttpDownloader() { mixin(MGPS("Pointer", 28)); }
	}
	struct FileNameToURLMapping
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.OnlineTitleFileDownloadMcp.FileNameToURLMapping")); }
		@property final auto ref
		{
			ScriptName UrlMapping() { mixin(MGPS("ScriptName", 8)); }
			ScriptName Filename() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ReadTitleFileCompleteDelegates() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 64)); }
		ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp) TitleFiles() { mixin(MGPC("ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp)", 76)); }
		ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping) FilesToUrls() { mixin(MGPC("ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping)", 108)); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadTitleFileComplete__Delegate'!
		float TimeOut() { mixin(MGPC("float", 104)); }
		ScriptString BaseUrl() { mixin(MGPC("ScriptString", 92)); }
		int DownloadCount() { mixin(MGPC("int", 88)); }
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
	bool GetTitleFileContents(ScriptString Filename, ref ScriptArray!(ubyte) FileContents)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = FileContents;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleFileContents, params.ptr, cast(void*)0);
		FileContents = *cast(ScriptArray!(ubyte)*)&params[12];
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
