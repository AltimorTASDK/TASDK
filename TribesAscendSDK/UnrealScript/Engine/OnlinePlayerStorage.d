module UnrealScript.Engine.OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerStorage : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlinePlayerStorage")); }
	private static __gshared OnlinePlayerStorage mDefaultProperties;
	@property final static OnlinePlayerStorage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlinePlayerStorage)("OnlinePlayerStorage Engine.Default__OnlinePlayerStorage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetProfileSettingId;
			ScriptFunction mGetProfileSettingName;
			ScriptFunction mGetProfileSettingColumnHeader;
			ScriptFunction mFindProfileSettingIndex;
			ScriptFunction mFindProfileMappingIndex;
			ScriptFunction mFindProfileMappingIndexByName;
			ScriptFunction mFindDefaultProfileMappingIndexByName;
			ScriptFunction mIsProfileSettingIdMapped;
			ScriptFunction mGetProfileSettingValue;
			ScriptFunction mGetProfileSettingValueName;
			ScriptFunction mGetProfileSettingValues;
			ScriptFunction mGetProfileSettingValueByName;
			ScriptFunction mSetProfileSettingValueByName;
			ScriptFunction mSetProfileSettingValue;
			ScriptFunction mGetProfileSettingValueId;
			ScriptFunction mGetProfileSettingValueFromListIndex;
			ScriptFunction mGetProfileSettingValueInt;
			ScriptFunction mGetProfileSettingValueFloat;
			ScriptFunction mSetProfileSettingValueId;
			ScriptFunction mSetProfileSettingValueInt;
			ScriptFunction mSetProfileSettingValueFloat;
			ScriptFunction mGetProfileSettingMappingType;
			ScriptFunction mGetProfileSettingMappingIds;
			ScriptFunction mGetProfileSettingRange;
			ScriptFunction mSetRangedProfileSettingValue;
			ScriptFunction mGetRangedProfileSettingValue;
			ScriptFunction mAddSettingInt;
			ScriptFunction mAddSettingFloat;
			ScriptFunction mSetToDefaults;
			ScriptFunction mAppendVersionToSettings;
			ScriptFunction mGetVersionNumber;
			ScriptFunction mSetDefaultVersionNumber;
		}
		public @property static final
		{
			ScriptFunction GetProfileSettingId() { return mGetProfileSettingId ? mGetProfileSettingId : (mGetProfileSettingId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingId")); }
			ScriptFunction GetProfileSettingName() { return mGetProfileSettingName ? mGetProfileSettingName : (mGetProfileSettingName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingName")); }
			ScriptFunction GetProfileSettingColumnHeader() { return mGetProfileSettingColumnHeader ? mGetProfileSettingColumnHeader : (mGetProfileSettingColumnHeader = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingColumnHeader")); }
			ScriptFunction FindProfileSettingIndex() { return mFindProfileSettingIndex ? mFindProfileSettingIndex : (mFindProfileSettingIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.FindProfileSettingIndex")); }
			ScriptFunction FindProfileMappingIndex() { return mFindProfileMappingIndex ? mFindProfileMappingIndex : (mFindProfileMappingIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.FindProfileMappingIndex")); }
			ScriptFunction FindProfileMappingIndexByName() { return mFindProfileMappingIndexByName ? mFindProfileMappingIndexByName : (mFindProfileMappingIndexByName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.FindProfileMappingIndexByName")); }
			ScriptFunction FindDefaultProfileMappingIndexByName() { return mFindDefaultProfileMappingIndexByName ? mFindDefaultProfileMappingIndexByName : (mFindDefaultProfileMappingIndexByName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.FindDefaultProfileMappingIndexByName")); }
			ScriptFunction IsProfileSettingIdMapped() { return mIsProfileSettingIdMapped ? mIsProfileSettingIdMapped : (mIsProfileSettingIdMapped = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.IsProfileSettingIdMapped")); }
			ScriptFunction GetProfileSettingValue() { return mGetProfileSettingValue ? mGetProfileSettingValue : (mGetProfileSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValue")); }
			ScriptFunction GetProfileSettingValueName() { return mGetProfileSettingValueName ? mGetProfileSettingValueName : (mGetProfileSettingValueName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueName")); }
			ScriptFunction GetProfileSettingValues() { return mGetProfileSettingValues ? mGetProfileSettingValues : (mGetProfileSettingValues = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValues")); }
			ScriptFunction GetProfileSettingValueByName() { return mGetProfileSettingValueByName ? mGetProfileSettingValueByName : (mGetProfileSettingValueByName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueByName")); }
			ScriptFunction SetProfileSettingValueByName() { return mSetProfileSettingValueByName ? mSetProfileSettingValueByName : (mSetProfileSettingValueByName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetProfileSettingValueByName")); }
			ScriptFunction SetProfileSettingValue() { return mSetProfileSettingValue ? mSetProfileSettingValue : (mSetProfileSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetProfileSettingValue")); }
			ScriptFunction GetProfileSettingValueId() { return mGetProfileSettingValueId ? mGetProfileSettingValueId : (mGetProfileSettingValueId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueId")); }
			ScriptFunction GetProfileSettingValueFromListIndex() { return mGetProfileSettingValueFromListIndex ? mGetProfileSettingValueFromListIndex : (mGetProfileSettingValueFromListIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueFromListIndex")); }
			ScriptFunction GetProfileSettingValueInt() { return mGetProfileSettingValueInt ? mGetProfileSettingValueInt : (mGetProfileSettingValueInt = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueInt")); }
			ScriptFunction GetProfileSettingValueFloat() { return mGetProfileSettingValueFloat ? mGetProfileSettingValueFloat : (mGetProfileSettingValueFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingValueFloat")); }
			ScriptFunction SetProfileSettingValueId() { return mSetProfileSettingValueId ? mSetProfileSettingValueId : (mSetProfileSettingValueId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetProfileSettingValueId")); }
			ScriptFunction SetProfileSettingValueInt() { return mSetProfileSettingValueInt ? mSetProfileSettingValueInt : (mSetProfileSettingValueInt = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetProfileSettingValueInt")); }
			ScriptFunction SetProfileSettingValueFloat() { return mSetProfileSettingValueFloat ? mSetProfileSettingValueFloat : (mSetProfileSettingValueFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetProfileSettingValueFloat")); }
			ScriptFunction GetProfileSettingMappingType() { return mGetProfileSettingMappingType ? mGetProfileSettingMappingType : (mGetProfileSettingMappingType = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingMappingType")); }
			ScriptFunction GetProfileSettingMappingIds() { return mGetProfileSettingMappingIds ? mGetProfileSettingMappingIds : (mGetProfileSettingMappingIds = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingMappingIds")); }
			ScriptFunction GetProfileSettingRange() { return mGetProfileSettingRange ? mGetProfileSettingRange : (mGetProfileSettingRange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetProfileSettingRange")); }
			ScriptFunction SetRangedProfileSettingValue() { return mSetRangedProfileSettingValue ? mSetRangedProfileSettingValue : (mSetRangedProfileSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetRangedProfileSettingValue")); }
			ScriptFunction GetRangedProfileSettingValue() { return mGetRangedProfileSettingValue ? mGetRangedProfileSettingValue : (mGetRangedProfileSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetRangedProfileSettingValue")); }
			ScriptFunction AddSettingInt() { return mAddSettingInt ? mAddSettingInt : (mAddSettingInt = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.AddSettingInt")); }
			ScriptFunction AddSettingFloat() { return mAddSettingFloat ? mAddSettingFloat : (mAddSettingFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.AddSettingFloat")); }
			ScriptFunction SetToDefaults() { return mSetToDefaults ? mSetToDefaults : (mSetToDefaults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetToDefaults")); }
			ScriptFunction AppendVersionToSettings() { return mAppendVersionToSettings ? mAppendVersionToSettings : (mAppendVersionToSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.AppendVersionToSettings")); }
			ScriptFunction GetVersionNumber() { return mGetVersionNumber ? mGetVersionNumber : (mGetVersionNumber = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.GetVersionNumber")); }
			ScriptFunction SetDefaultVersionNumber() { return mSetDefaultVersionNumber ? mSetDefaultVersionNumber : (mSetDefaultVersionNumber = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerStorage.SetDefaultVersionNumber")); }
		}
	}
	enum EOnlineProfilePropertyOwner : ubyte
	{
		OPPO_None = 0,
		OPPO_OnlineService = 1,
		OPPO_Game = 2,
		OPPO_MAX = 3,
	}
	enum EOnlinePlayerStorageAsyncState : ubyte
	{
		OPAS_None = 0,
		OPAS_Read = 1,
		OPAS_Write = 2,
		OPAS_MAX = 3,
	}
	struct OnlineProfileSetting
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlinePlayerStorage.OnlineProfileSetting")); }
		@property final auto ref
		{
			Settings.SettingsProperty ProfileSetting() { return *cast(Settings.SettingsProperty*)(cast(size_t)&this + 4); }
			OnlinePlayerStorage.EOnlineProfilePropertyOwner Owner() { return *cast(OnlinePlayerStorage.EOnlineProfilePropertyOwner*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting) ProfileSettings() { return *cast(ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting)*)(cast(size_t)cast(void*)this + 68); }
		ScriptArray!(Settings.SettingsPropertyPropertyMetaData) ProfileMappings() { return *cast(ScriptArray!(Settings.SettingsPropertyPropertyMetaData)*)(cast(size_t)cast(void*)this + 80); }
		int DeviceID() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
		OnlinePlayerStorage.EOnlinePlayerStorageAsyncState AsyncState() { return *cast(OnlinePlayerStorage.EOnlinePlayerStorageAsyncState*)(cast(size_t)cast(void*)this + 92); }
		int VersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		int VersionSettingsId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	}
final:
	bool GetProfileSettingId(ScriptName ProfileSettingName, int* ProfileSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(int*)&params[8] = *ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingId, params.ptr, cast(void*)0);
		*ProfileSettingId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	ScriptName GetProfileSettingName(int ProfileSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	ScriptString GetProfileSettingColumnHeader(int ProfileSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingColumnHeader, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int FindProfileSettingIndex(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProfileSettingIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int FindProfileMappingIndex(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProfileMappingIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int FindProfileMappingIndexByName(ScriptName ProfileSettingName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProfileMappingIndexByName, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int FindDefaultProfileMappingIndexByName(ScriptName ProfileSettingName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		StaticClass.ProcessEvent(Functions.FindDefaultProfileMappingIndexByName, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool IsProfileSettingIdMapped(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProfileSettingIdMapped, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetProfileSettingValue(int ProfileSettingId, ScriptString* Value, int ValueMapID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = *Value;
		*cast(int*)&params[16] = ValueMapID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValue, params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[20];
	}
	ScriptName GetProfileSettingValueName(int ProfileSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool GetProfileSettingValues(int ProfileSettingId, ScriptArray!(ScriptName)* Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = *Values;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValues, params.ptr, cast(void*)0);
		*Values = *cast(ScriptArray!(ScriptName)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingValueByName(ScriptName ProfileSettingName, ScriptString* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueByName, params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool SetProfileSettingValueByName(ScriptName ProfileSettingName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValueByName, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool SetProfileSettingValue(int ProfileSettingId, ScriptString* NewValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValue, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingValueId(int ProfileSettingId, int* ValueId, int* ListIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = *ValueId;
		*cast(int*)&params[8] = *ListIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueId, params.ptr, cast(void*)0);
		*ValueId = *cast(int*)&params[4];
		*ListIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetProfileSettingValueFromListIndex(int ProfileSettingId, int ListIndex, int* Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = ListIndex;
		*cast(int*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueFromListIndex, params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetProfileSettingValueInt(int ProfileSettingId, int* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueInt, params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetProfileSettingValueFloat(int ProfileSettingId, float* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueFloat, params.ptr, cast(void*)0);
		*Value = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool SetProfileSettingValueId(int ProfileSettingId, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValueId, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetProfileSettingValueInt(int ProfileSettingId, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValueInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetProfileSettingValueFloat(int ProfileSettingId, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValueFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool GetProfileSettingMappingType(int ProfileId, Settings.EPropertyValueMappingType* OutType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = *OutType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingMappingType, params.ptr, cast(void*)0);
		*OutType = *cast(Settings.EPropertyValueMappingType*)&params[4];
		return *cast(bool*)&params[8];
	}
	static bool GetProfileSettingMappingIds(int ProfileId, ScriptArray!(int)* Ids)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(ScriptArray!(int)*)&params[4] = *Ids;
		StaticClass.ProcessEvent(Functions.GetProfileSettingMappingIds, params.ptr, cast(void*)0);
		*Ids = *cast(ScriptArray!(int)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingRange(int ProfileId, float* OutMinValue, float* OutMaxValue, float* RangeIncrement, ubyte* bFormatAsInt)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = *OutMinValue;
		*cast(float*)&params[8] = *OutMaxValue;
		*cast(float*)&params[12] = *RangeIncrement;
		params[16] = *bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingRange, params.ptr, cast(void*)0);
		*OutMinValue = *cast(float*)&params[4];
		*OutMaxValue = *cast(float*)&params[8];
		*RangeIncrement = *cast(float*)&params[12];
		*bFormatAsInt = params[16];
		return *cast(bool*)&params[20];
	}
	bool SetRangedProfileSettingValue(int ProfileId, float NewValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRangedProfileSettingValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool GetRangedProfileSettingValue(int ProfileId, float* OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRangedProfileSettingValue, params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	void AddSettingInt(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSettingInt, params.ptr, cast(void*)0);
	}
	void AddSettingFloat(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSettingFloat, params.ptr, cast(void*)0);
	}
	void SetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetToDefaults, cast(void*)0, cast(void*)0);
	}
	void AppendVersionToSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendVersionToSettings, cast(void*)0, cast(void*)0);
	}
	int GetVersionNumber()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVersionNumber, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetDefaultVersionNumber()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDefaultVersionNumber, cast(void*)0, cast(void*)0);
	}
}
