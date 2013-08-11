module UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataProvider_OnlineProfileSettings : UIDataProvider_OnlinePlayerStorage
{
	final bool ReadData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* PlayerInterface, ubyte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[21];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(int*)&params[12] = DeviceID;
		*cast(OnlinePlayerStorage*)&params[16] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28328], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool WriteData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* PlayerInterface, ubyte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[21];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(int*)&params[12] = DeviceID;
		*cast(OnlinePlayerStorage*)&params[16] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28334], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool GetData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* PlayerInterface, ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[17];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[12] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28340], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AddReadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* PlayerInterface, ubyte LocalUserNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28346], params.ptr, cast(void*)0);
	}
	final void ClearReadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* PlayerInterface, ubyte LocalUserNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28349], params.ptr, cast(void*)0);
	}
	final void RefreshStorageData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28352], cast(void*)0, cast(void*)0);
	}
}
