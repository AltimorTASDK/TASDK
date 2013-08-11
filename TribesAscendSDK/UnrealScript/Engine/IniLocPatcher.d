module UnrealScript.Engine.IniLocPatcher;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface IniLocPatcher : UObject
{
public extern(D):
	struct IniLocFileEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18260], params.ptr, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18264], cast(void*)0, cast(void*)0);
	}
	void DownloadFiles()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18267], cast(void*)0, cast(void*)0);
	}
	void OnReadFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18271], params.ptr, cast(void*)0);
	}
	void ProcessIniLocFile(ScriptString Filename, ScriptArray!(ubyte)* FileData)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18279], params.ptr, cast(void*)0);
		*FileData = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	void AddFileToDownload(ScriptString Filename)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18283], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18286], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18288], params.ptr, cast(void*)0);
	}
	void ClearCachedFiles()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18290], cast(void*)0, cast(void*)0);
	}
	ScriptString UpdateLocFileName(ScriptString Filename)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18294], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
