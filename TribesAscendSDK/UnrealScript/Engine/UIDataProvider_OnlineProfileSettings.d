module UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataProvider_OnlineProfileSettings : UIDataProvider_OnlinePlayerStorage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider_OnlineProfileSettings")()); }
	private static __gshared UIDataProvider_OnlineProfileSettings mDefaultProperties;
	@property final static UIDataProvider_OnlineProfileSettings DefaultProperties() { mixin(MGDPC!(UIDataProvider_OnlineProfileSettings, "UIDataProvider_OnlineProfileSettings Engine.Default__UIDataProvider_OnlineProfileSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReadData;
			ScriptFunction mWriteData;
			ScriptFunction mGetData;
			ScriptFunction mAddReadCompleteDelegate;
			ScriptFunction mClearReadCompleteDelegate;
			ScriptFunction mRefreshStorageData;
		}
		public @property static final
		{
			ScriptFunction ReadData() { mixin(MGF!("mReadData", "Function Engine.UIDataProvider_OnlineProfileSettings.ReadData")()); }
			ScriptFunction WriteData() { mixin(MGF!("mWriteData", "Function Engine.UIDataProvider_OnlineProfileSettings.WriteData")()); }
			ScriptFunction GetData() { mixin(MGF!("mGetData", "Function Engine.UIDataProvider_OnlineProfileSettings.GetData")()); }
			ScriptFunction AddReadCompleteDelegate() { mixin(MGF!("mAddReadCompleteDelegate", "Function Engine.UIDataProvider_OnlineProfileSettings.AddReadCompleteDelegate")()); }
			ScriptFunction ClearReadCompleteDelegate() { mixin(MGF!("mClearReadCompleteDelegate", "Function Engine.UIDataProvider_OnlineProfileSettings.ClearReadCompleteDelegate")()); }
			ScriptFunction RefreshStorageData() { mixin(MGF!("mRefreshStorageData", "Function Engine.UIDataProvider_OnlineProfileSettings.RefreshStorageData")()); }
		}
	}
final:
	bool ReadData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* PlayerInterface, ubyte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(int*)&params[12] = DeviceID;
		*cast(OnlinePlayerStorage*)&params[16] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool WriteData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* PlayerInterface, ubyte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(int*)&params[12] = DeviceID;
		*cast(OnlinePlayerStorage*)&params[16] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool GetData(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* PlayerInterface, ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[12] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddReadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* PlayerInterface, ubyte LocalUserNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* PlayerInterface, ubyte LocalUserNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = PlayerInterface;
		params[8] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadCompleteDelegate, params.ptr, cast(void*)0);
	}
	void RefreshStorageData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshStorageData, cast(void*)0, cast(void*)0);
	}
}
