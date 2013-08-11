module UnrealScript.IpDrv.OnlineTitleFileDownloadMcp;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineTitleFileDownloadMcp : MCPBase
{
	struct TitleFileMcp
	{
		public @property final auto ref ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Filename[12];
		public @property final auto ref OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
		private ubyte __AsyncState[1];
		public @property final auto ref ScriptArray!(ubyte) Data() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 16); }
		private ubyte __Data[12];
		public @property final auto ref UObject.Pointer HttpDownloader() { return *cast(UObject.Pointer*)(cast(size_t)&this + 28); }
		private ubyte __HttpDownloader[4];
	}
	struct FileNameToURLMapping
	{
		public @property final auto ref ScriptName UrlMapping() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __UrlMapping[8];
		public @property final auto ref ScriptName Filename() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Filename[8];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) ReadTitleFileCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp) TitleFiles() { return *cast(ScriptArray!(OnlineTitleFileDownloadMcp.TitleFileMcp)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping) FilesToUrls() { return *cast(ScriptArray!(OnlineTitleFileDownloadMcp.FileNameToURLMapping)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float TimeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptString BaseUrl() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int DownloadCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	final void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33846], params.ptr, cast(void*)0);
	}
	final bool ReadTitleFile(ScriptString FileToRead)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FileToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33862], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33865], params.ptr, cast(void*)0);
	}
	final void ClearReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33867], params.ptr, cast(void*)0);
	}
	final bool GetTitleFileContents(ScriptString Filename, ScriptArray!(ubyte)* FileContents)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileContents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33870], params.ptr, cast(void*)0);
		*FileContents = *cast(ScriptArray!(ubyte)*)&params[12];
		return *cast(bool*)&params[24];
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetTitleFileState(ScriptString Filename)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33875], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[12];
	}
	final bool ClearDownloadedFiles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33879], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ClearDownloadedFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33881], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
