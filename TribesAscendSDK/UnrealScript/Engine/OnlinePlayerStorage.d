module UnrealScript.Engine.OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerStorage : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlinePlayerStorage")); }
	private static __gshared OnlinePlayerStorage mDefaultProperties;
	@property final static OnlinePlayerStorage DefaultProperties() { mixin(MGDPC("OnlinePlayerStorage", "OnlinePlayerStorage Engine.Default__OnlinePlayerStorage")); }
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
			ScriptFunction GetProfileSettingId() { mixin(MGF("mGetProfileSettingId", "Function Engine.OnlinePlayerStorage.GetProfileSettingId")); }
			ScriptFunction GetProfileSettingName() { mixin(MGF("mGetProfileSettingName", "Function Engine.OnlinePlayerStorage.GetProfileSettingName")); }
			ScriptFunction GetProfileSettingColumnHeader() { mixin(MGF("mGetProfileSettingColumnHeader", "Function Engine.OnlinePlayerStorage.GetProfileSettingColumnHeader")); }
			ScriptFunction FindProfileSettingIndex() { mixin(MGF("mFindProfileSettingIndex", "Function Engine.OnlinePlayerStorage.FindProfileSettingIndex")); }
			ScriptFunction FindProfileMappingIndex() { mixin(MGF("mFindProfileMappingIndex", "Function Engine.OnlinePlayerStorage.FindProfileMappingIndex")); }
			ScriptFunction FindProfileMappingIndexByName() { mixin(MGF("mFindProfileMappingIndexByName", "Function Engine.OnlinePlayerStorage.FindProfileMappingIndexByName")); }
			ScriptFunction FindDefaultProfileMappingIndexByName() { mixin(MGF("mFindDefaultProfileMappingIndexByName", "Function Engine.OnlinePlayerStorage.FindDefaultProfileMappingIndexByName")); }
			ScriptFunction IsProfileSettingIdMapped() { mixin(MGF("mIsProfileSettingIdMapped", "Function Engine.OnlinePlayerStorage.IsProfileSettingIdMapped")); }
			ScriptFunction GetProfileSettingValue() { mixin(MGF("mGetProfileSettingValue", "Function Engine.OnlinePlayerStorage.GetProfileSettingValue")); }
			ScriptFunction GetProfileSettingValueName() { mixin(MGF("mGetProfileSettingValueName", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueName")); }
			ScriptFunction GetProfileSettingValues() { mixin(MGF("mGetProfileSettingValues", "Function Engine.OnlinePlayerStorage.GetProfileSettingValues")); }
			ScriptFunction GetProfileSettingValueByName() { mixin(MGF("mGetProfileSettingValueByName", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueByName")); }
			ScriptFunction SetProfileSettingValueByName() { mixin(MGF("mSetProfileSettingValueByName", "Function Engine.OnlinePlayerStorage.SetProfileSettingValueByName")); }
			ScriptFunction SetProfileSettingValue() { mixin(MGF("mSetProfileSettingValue", "Function Engine.OnlinePlayerStorage.SetProfileSettingValue")); }
			ScriptFunction GetProfileSettingValueId() { mixin(MGF("mGetProfileSettingValueId", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueId")); }
			ScriptFunction GetProfileSettingValueFromListIndex() { mixin(MGF("mGetProfileSettingValueFromListIndex", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueFromListIndex")); }
			ScriptFunction GetProfileSettingValueInt() { mixin(MGF("mGetProfileSettingValueInt", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueInt")); }
			ScriptFunction GetProfileSettingValueFloat() { mixin(MGF("mGetProfileSettingValueFloat", "Function Engine.OnlinePlayerStorage.GetProfileSettingValueFloat")); }
			ScriptFunction SetProfileSettingValueId() { mixin(MGF("mSetProfileSettingValueId", "Function Engine.OnlinePlayerStorage.SetProfileSettingValueId")); }
			ScriptFunction SetProfileSettingValueInt() { mixin(MGF("mSetProfileSettingValueInt", "Function Engine.OnlinePlayerStorage.SetProfileSettingValueInt")); }
			ScriptFunction SetProfileSettingValueFloat() { mixin(MGF("mSetProfileSettingValueFloat", "Function Engine.OnlinePlayerStorage.SetProfileSettingValueFloat")); }
			ScriptFunction GetProfileSettingMappingType() { mixin(MGF("mGetProfileSettingMappingType", "Function Engine.OnlinePlayerStorage.GetProfileSettingMappingType")); }
			ScriptFunction GetProfileSettingMappingIds() { mixin(MGF("mGetProfileSettingMappingIds", "Function Engine.OnlinePlayerStorage.GetProfileSettingMappingIds")); }
			ScriptFunction GetProfileSettingRange() { mixin(MGF("mGetProfileSettingRange", "Function Engine.OnlinePlayerStorage.GetProfileSettingRange")); }
			ScriptFunction SetRangedProfileSettingValue() { mixin(MGF("mSetRangedProfileSettingValue", "Function Engine.OnlinePlayerStorage.SetRangedProfileSettingValue")); }
			ScriptFunction GetRangedProfileSettingValue() { mixin(MGF("mGetRangedProfileSettingValue", "Function Engine.OnlinePlayerStorage.GetRangedProfileSettingValue")); }
			ScriptFunction AddSettingInt() { mixin(MGF("mAddSettingInt", "Function Engine.OnlinePlayerStorage.AddSettingInt")); }
			ScriptFunction AddSettingFloat() { mixin(MGF("mAddSettingFloat", "Function Engine.OnlinePlayerStorage.AddSettingFloat")); }
			ScriptFunction SetToDefaults() { mixin(MGF("mSetToDefaults", "Function Engine.OnlinePlayerStorage.SetToDefaults")); }
			ScriptFunction AppendVersionToSettings() { mixin(MGF("mAppendVersionToSettings", "Function Engine.OnlinePlayerStorage.AppendVersionToSettings")); }
			ScriptFunction GetVersionNumber() { mixin(MGF("mGetVersionNumber", "Function Engine.OnlinePlayerStorage.GetVersionNumber")); }
			ScriptFunction SetDefaultVersionNumber() { mixin(MGF("mSetDefaultVersionNumber", "Function Engine.OnlinePlayerStorage.SetDefaultVersionNumber")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlinePlayerStorage.OnlineProfileSetting")); }
		@property final auto ref
		{
			Settings.SettingsProperty ProfileSetting() { mixin(MGPS("Settings.SettingsProperty", 4)); }
			OnlinePlayerStorage.EOnlineProfilePropertyOwner Owner() { mixin(MGPS("OnlinePlayerStorage.EOnlineProfilePropertyOwner", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting) ProfileSettings() { mixin(MGPC("ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting)", 68)); }
		ScriptArray!(Settings.SettingsPropertyPropertyMetaData) ProfileMappings() { mixin(MGPC("ScriptArray!(Settings.SettingsPropertyPropertyMetaData)", 80)); }
		int DeviceID() { mixin(MGPC("int", 96)); }
		OnlinePlayerStorage.EOnlinePlayerStorageAsyncState AsyncState() { mixin(MGPC("OnlinePlayerStorage.EOnlinePlayerStorageAsyncState", 92)); }
		int VersionNumber() { mixin(MGPC("int", 60)); }
		int VersionSettingsId() { mixin(MGPC("int", 64)); }
	}
final:
	bool GetProfileSettingId(ScriptName ProfileSettingName, ref int ProfileSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(int*)&params[8] = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingId, params.ptr, cast(void*)0);
		ProfileSettingId = *cast(int*)&params[8];
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
	bool GetProfileSettingValue(int ProfileSettingId, ref ScriptString Value, int* ValueMapID = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = Value;
		if (ValueMapID !is null)
			*cast(int*)&params[16] = *ValueMapID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValue, params.ptr, cast(void*)0);
		Value = *cast(ScriptString*)&params[4];
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
	bool GetProfileSettingValues(int ProfileSettingId, ref ScriptArray!(ScriptName) Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = Values;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValues, params.ptr, cast(void*)0);
		Values = *cast(ScriptArray!(ScriptName)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingValueByName(ScriptName ProfileSettingName, ref ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueByName, params.ptr, cast(void*)0);
		Value = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool SetProfileSettingValueByName(ScriptName ProfileSettingName, ref in ScriptString NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = cast(ScriptString)NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValueByName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool SetProfileSettingValue(int ProfileSettingId, ref in ScriptString NewValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = cast(ScriptString)NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProfileSettingValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingValueId(int ProfileSettingId, ref int ValueId, int* ListIndex = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = ValueId;
		if (ListIndex !is null)
			*cast(int*)&params[8] = *ListIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueId, params.ptr, cast(void*)0);
		ValueId = *cast(int*)&params[4];
		if (ListIndex !is null)
			*ListIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetProfileSettingValueFromListIndex(int ProfileSettingId, int ListIndex, ref int Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = ListIndex;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueFromListIndex, params.ptr, cast(void*)0);
		Value = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetProfileSettingValueInt(int ProfileSettingId, ref int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueInt, params.ptr, cast(void*)0);
		Value = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetProfileSettingValueFloat(int ProfileSettingId, ref float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingValueFloat, params.ptr, cast(void*)0);
		Value = *cast(float*)&params[4];
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
	bool GetProfileSettingMappingType(int ProfileId, ref Settings.EPropertyValueMappingType OutType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = OutType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingMappingType, params.ptr, cast(void*)0);
		OutType = *cast(Settings.EPropertyValueMappingType*)&params[4];
		return *cast(bool*)&params[8];
	}
	static bool GetProfileSettingMappingIds(int ProfileId, ref ScriptArray!(int) Ids)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(ScriptArray!(int)*)&params[4] = Ids;
		StaticClass.ProcessEvent(Functions.GetProfileSettingMappingIds, params.ptr, cast(void*)0);
		Ids = *cast(ScriptArray!(int)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool GetProfileSettingRange(int ProfileId, ref float OutMinValue, ref float OutMaxValue, ref float RangeIncrement, ref ubyte bFormatAsInt)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = OutMinValue;
		*cast(float*)&params[8] = OutMaxValue;
		*cast(float*)&params[12] = RangeIncrement;
		params[16] = bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingRange, params.ptr, cast(void*)0);
		OutMinValue = *cast(float*)&params[4];
		OutMaxValue = *cast(float*)&params[8];
		RangeIncrement = *cast(float*)&params[12];
		bFormatAsInt = params[16];
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
	bool GetRangedProfileSettingValue(int ProfileId, ref float OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRangedProfileSettingValue, params.ptr, cast(void*)0);
		OutValue = *cast(float*)&params[4];
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
