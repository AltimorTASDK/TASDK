module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerStorage : UIDataProvider_OnlinePlayerDataBase
{
	struct PlayerStorageArrayProvider
	{
		public @property final auto ref UIDataProvider_OnlinePlayerStorageArray Provider() { return *cast(UIDataProvider_OnlinePlayerStorageArray*)(cast(size_t)&this + 12); }
		private ubyte __Provider[4];
		public @property final auto ref ScriptName PlayerStorageName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __PlayerStorageName[8];
		public @property final auto ref int PlayerStorageId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerStorageId[4];
	}
	public @property final auto ref ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider) PlayerStorageArrayProviders() { return *cast(ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int DeviceStorageSizeNeeded() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final bool bWasErrorLastRead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bWasErrorLastRead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref ScriptName ProviderName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref OnlinePlayerStorage Profile() { return *cast(OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 92); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28260], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28266], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28272], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28278], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28281], params.ptr, cast(void*)0);
	}
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28284], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28288], cast(void*)0, cast(void*)0);
	}
	final void OnReadStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28291], params.ptr, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28296], params.ptr, cast(void*)0);
	}
	final void RefreshStorageData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28302], cast(void*)0, cast(void*)0);
	}
	final void OnDeviceSelectionComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28305], params.ptr, cast(void*)0);
	}
	final void ArrayProviderPropertyChanged(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28309], params.ptr, cast(void*)0);
	}
	final void OnSettingValueUpdated(ScriptName SettingName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28314], params.ptr, cast(void*)0);
	}
	final void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28318], cast(void*)0, cast(void*)0);
	}
}
