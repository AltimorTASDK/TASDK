module UnrealScript.Engine.OnlineTitleFileInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineTitleFileInterface : UInterface
{
	final bool ReadTitleFile(ScriptString FileToRead)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FileToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool GetTitleFileContents(ScriptString Filename, ScriptArray!(ubyte)* FileContents)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileContents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18277], params.ptr, cast(void*)0);
		*FileContents = *cast(ScriptArray!(ubyte)*)&params[12];
		return *cast(bool*)&params[24];
	}
	final bool ClearDownloadedFiles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18292], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22967], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22972], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22974], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetTitleFileState(ScriptString Filename)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22979], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[12];
	}
	final bool ClearDownloadedFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22982], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
