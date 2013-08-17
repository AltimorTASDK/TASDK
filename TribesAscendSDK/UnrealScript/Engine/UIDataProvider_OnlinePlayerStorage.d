module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerStorage : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider_OnlinePlayerStorage")()); }
	private static __gshared UIDataProvider_OnlinePlayerStorage mDefaultProperties;
	@property final static UIDataProvider_OnlinePlayerStorage DefaultProperties() { mixin(MGDPC!(UIDataProvider_OnlinePlayerStorage, "UIDataProvider_OnlinePlayerStorage Engine.Default__UIDataProvider_OnlinePlayerStorage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReadData;
			ScriptFunction mWriteData;
			ScriptFunction mGetData;
			ScriptFunction mAddReadCompleteDelegate;
			ScriptFunction mClearReadCompleteDelegate;
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mOnReadStorageComplete;
			ScriptFunction mOnLoginChange;
			ScriptFunction mRefreshStorageData;
			ScriptFunction mOnDeviceSelectionComplete;
			ScriptFunction mArrayProviderPropertyChanged;
			ScriptFunction mOnSettingValueUpdated;
			ScriptFunction mOnStorageDeviceChange;
		}
		public @property static final
		{
			ScriptFunction ReadData() { mixin(MGF!("mReadData", "Function Engine.UIDataProvider_OnlinePlayerStorage.ReadData")()); }
			ScriptFunction WriteData() { mixin(MGF!("mWriteData", "Function Engine.UIDataProvider_OnlinePlayerStorage.WriteData")()); }
			ScriptFunction GetData() { mixin(MGF!("mGetData", "Function Engine.UIDataProvider_OnlinePlayerStorage.GetData")()); }
			ScriptFunction AddReadCompleteDelegate() { mixin(MGF!("mAddReadCompleteDelegate", "Function Engine.UIDataProvider_OnlinePlayerStorage.AddReadCompleteDelegate")()); }
			ScriptFunction ClearReadCompleteDelegate() { mixin(MGF!("mClearReadCompleteDelegate", "Function Engine.UIDataProvider_OnlinePlayerStorage.ClearReadCompleteDelegate")()); }
			ScriptFunction OnRegister() { mixin(MGF!("mOnRegister", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnRegister")()); }
			ScriptFunction OnUnregister() { mixin(MGF!("mOnUnregister", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnUnregister")()); }
			ScriptFunction OnReadStorageComplete() { mixin(MGF!("mOnReadStorageComplete", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnReadStorageComplete")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnLoginChange")()); }
			ScriptFunction RefreshStorageData() { mixin(MGF!("mRefreshStorageData", "Function Engine.UIDataProvider_OnlinePlayerStorage.RefreshStorageData")()); }
			ScriptFunction OnDeviceSelectionComplete() { mixin(MGF!("mOnDeviceSelectionComplete", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnDeviceSelectionComplete")()); }
			ScriptFunction ArrayProviderPropertyChanged() { mixin(MGF!("mArrayProviderPropertyChanged", "Function Engine.UIDataProvider_OnlinePlayerStorage.ArrayProviderPropertyChanged")()); }
			ScriptFunction OnSettingValueUpdated() { mixin(MGF!("mOnSettingValueUpdated", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnSettingValueUpdated")()); }
			ScriptFunction OnStorageDeviceChange() { mixin(MGF!("mOnStorageDeviceChange", "Function Engine.UIDataProvider_OnlinePlayerStorage.OnStorageDeviceChange")()); }
		}
	}
	struct PlayerStorageArrayProvider
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider")()); }
		@property final auto ref
		{
			UIDataProvider_OnlinePlayerStorageArray Provider() { mixin(MGPS!(UIDataProvider_OnlinePlayerStorageArray, 12)()); }
			ScriptName PlayerStorageName() { mixin(MGPS!(ScriptName, 4)()); }
			int PlayerStorageId() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider) PlayerStorageArrayProviders() { mixin(MGPC!(ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider), 108)()); }
			int DeviceStorageSizeNeeded() { mixin(MGPC!(int, 120)()); }
			ScriptName ProviderName() { mixin(MGPC!(ScriptName, 96)()); }
			OnlinePlayerStorage Profile() { mixin(MGPC!(OnlinePlayerStorage, 92)()); }
		}
		bool bWasErrorLastRead() { mixin(MGBPC!(104, 0x1)()); }
		bool bWasErrorLastRead(bool val) { mixin(MSBPC!(104, 0x1)()); }
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
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
	void OnReadStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadStorageComplete, params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void RefreshStorageData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshStorageData, cast(void*)0, cast(void*)0);
	}
	void OnDeviceSelectionComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceSelectionComplete, params.ptr, cast(void*)0);
	}
	void ArrayProviderPropertyChanged(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArrayProviderPropertyChanged, params.ptr, cast(void*)0);
	}
	void OnSettingValueUpdated(ScriptName SettingName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSettingValueUpdated, params.ptr, cast(void*)0);
	}
	void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStorageDeviceChange, cast(void*)0, cast(void*)0);
	}
}
