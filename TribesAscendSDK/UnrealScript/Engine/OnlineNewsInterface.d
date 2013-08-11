module UnrealScript.Engine.OnlineNewsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineNewsInterface : UInterface
{
	final bool ReadNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[6];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21865], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OnReadNewsCompleted(bool bWasSuccessful, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[4] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21869], params.ptr, cast(void*)0);
	}
	final void AddReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21873], params.ptr, cast(void*)0);
	}
	final void ClearReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21875], params.ptr, cast(void*)0);
	}
	final ScriptString GetNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[14];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21877], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
