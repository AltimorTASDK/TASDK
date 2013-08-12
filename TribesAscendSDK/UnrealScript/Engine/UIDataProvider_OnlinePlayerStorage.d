module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerStorage : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_OnlinePlayerStorage")); }
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
			ScriptFunction ReadData() { return mReadData ? mReadData : (mReadData = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.ReadData")); }
			ScriptFunction WriteData() { return mWriteData ? mWriteData : (mWriteData = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.WriteData")); }
			ScriptFunction GetData() { return mGetData ? mGetData : (mGetData = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.GetData")); }
			ScriptFunction AddReadCompleteDelegate() { return mAddReadCompleteDelegate ? mAddReadCompleteDelegate : (mAddReadCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.AddReadCompleteDelegate")); }
			ScriptFunction ClearReadCompleteDelegate() { return mClearReadCompleteDelegate ? mClearReadCompleteDelegate : (mClearReadCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.ClearReadCompleteDelegate")); }
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnUnregister")); }
			ScriptFunction OnReadStorageComplete() { return mOnReadStorageComplete ? mOnReadStorageComplete : (mOnReadStorageComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnReadStorageComplete")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnLoginChange")); }
			ScriptFunction RefreshStorageData() { return mRefreshStorageData ? mRefreshStorageData : (mRefreshStorageData = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.RefreshStorageData")); }
			ScriptFunction OnDeviceSelectionComplete() { return mOnDeviceSelectionComplete ? mOnDeviceSelectionComplete : (mOnDeviceSelectionComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnDeviceSelectionComplete")); }
			ScriptFunction ArrayProviderPropertyChanged() { return mArrayProviderPropertyChanged ? mArrayProviderPropertyChanged : (mArrayProviderPropertyChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.ArrayProviderPropertyChanged")); }
			ScriptFunction OnSettingValueUpdated() { return mOnSettingValueUpdated ? mOnSettingValueUpdated : (mOnSettingValueUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnSettingValueUpdated")); }
			ScriptFunction OnStorageDeviceChange() { return mOnStorageDeviceChange ? mOnStorageDeviceChange : (mOnStorageDeviceChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerStorage.OnStorageDeviceChange")); }
		}
	}
	struct PlayerStorageArrayProvider
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider")); }
		@property final auto ref
		{
			UIDataProvider_OnlinePlayerStorageArray Provider() { return *cast(UIDataProvider_OnlinePlayerStorageArray*)(cast(size_t)&this + 12); }
			ScriptName PlayerStorageName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int PlayerStorageId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider) PlayerStorageArrayProviders() { return *cast(ScriptArray!(UIDataProvider_OnlinePlayerStorage.PlayerStorageArrayProvider)*)(cast(size_t)cast(void*)this + 108); }
			int DeviceStorageSizeNeeded() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			ScriptName ProviderName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
			OnlinePlayerStorage Profile() { return *cast(OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bWasErrorLastRead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bWasErrorLastRead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
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
